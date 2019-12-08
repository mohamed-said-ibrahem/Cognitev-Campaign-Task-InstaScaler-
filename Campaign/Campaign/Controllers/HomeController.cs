using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Campaign.Models;
using Campaign.Data;
using Microsoft.AspNetCore.Mvc.Rendering;
using DataTables.AspNet.AspNetCore;
using DataTables.AspNet.Core;
using Microsoft.EntityFrameworkCore;
using System.Net.Http;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;

namespace Campaign.Controllers
{
    public class HomeController : Controller
    {
        private readonly ApplicationDbContext context;
        static HttpClient client = new HttpClient();
        public HomeController(ApplicationDbContext context)
        {
            this.context = context;
        }
        public IActionResult Index()
        {
            ViewData["Country"] = new SelectList(context.Countr.Where(e => e.Hidden != true).Select(e => new { e.Id, Name = e.EnName }), "Id", "Name");
            ViewData["Cotegory"] = new SelectList(context.Category.Select(e => new { e.Id, e.Name }), "Id", "Name");
            return View();
        }
        public IActionResult Inde2x()
        {
            ViewData["Country"] = new SelectList(context.Countr.Where(e => e.Hidden != true).Select(e => new { e.Id, Name = e.EnName }), "Id", "Name");
            ViewData["Cotegory"] = new SelectList(context.Category.Select(e => new { e.Id, e.Name }), "Id", "Name");
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Create([Bind("Id,Name,Budget,Goal,CountryId,CategoryId,CreateDate")] Compaign compaign)
        {
            if (ModelState.IsValid)
            {

                if (compaign.CategoryId == null)
                {
                    try
                    {
                        HttpResponseMessage response = await client.GetAsync("https://ngkc0vhbrl.execute-api.eu-west-1.amazonaws.com/api/?url=https%3A%2F%2Farabic.cnn.com%2F&fbclid=IwAR3ArFDjdUo6yu8sWU0e-maw8livyF9LCO8BANQOr1j3Dihc5AkY-mYv94M");
                        response.EnsureSuccessStatusCode();
                        if (response.IsSuccessStatusCode)
                        {
                            var readTask = await response.Content.ReadAsAsync<Response>();
                            var itemsIsExist = await context.Category.Where(e => e.RelatedId == readTask.Category.Id).FirstOrDefaultAsync();
                            if (itemsIsExist == null)
                            {
                                var category = new CategoryCompaign
                                {
                                    RelatedId = readTask.Category.Id,
                                    CreateDate = DateTime.UtcNow.ToUniversalTime(),
                                    Name = readTask.Category.Name
                                };
                                context.Add(category);
                                await context.SaveChangesAsync();

                                compaign.CategoryId = category.Id;
                            }
                            else
                            {
                                compaign.CategoryId = itemsIsExist.Id;
                            }

                        }

                    }
                    catch (Exception)
                    {
                        return Ok("error");
                    }
                }
                var compains = await context.Compaign.Where(e => e.CategoryId == compaign.CategoryId && e.CountryId == compaign.CountryId).AnyAsync();
                if (compains)
                {
                    return Ok("exist");
                }
                context.Add(compaign);
                await context.SaveChangesAsync();
                return Ok("success");
            }
            return Ok("error");
        }

        public async Task<DataTablesJsonResult> Compaign(IDataTablesRequest request)
        {
            var data = context.Compaign.Include(e => e.Category).Include(e => e.Country).AsQueryable();
            int.TryParse(request.Search.Value, out int result);
            var filteredData = data
            .Select(e => new { e.Id, e.Name, e.Budget, e.Goal, Country = e.Country.EnName, Category = e.Category.Name });
            var orderColums = request.Columns.Where(x => x.Sort != null);
            var dataPage = filteredData.OrderByDescending(e => e.Id).Skip(request.Start).Take(request.Length);
            var response = DataTablesResponse.Create(request, data.Count(), filteredData.Count(), dataPage);

            return new DataTablesJsonResult(response, true);
        }
        [HttpPost]
        public async Task<IActionResult> ChartJson()
        {
            var data = context.Category.Include(e => e.Compaign).Include("Compaign.Country").AsQueryable();

            var compaigns = await data.Select(e => e.Compaign.OrderByDescending(s => s.CountryId).Select(s => s.Country.Id).ToList()).ToListAsync();
            List<int> countrtyList = new List<int>();
            foreach (var item in compaigns.Select(e => e))
            {
                foreach (var item2 in item)
                {
                    countrtyList.Add(item2);

                }

            }
            var country = await context.Countr.Where(e => countrtyList.Contains(e.Id)).Distinct().OrderByDescending(e => e.Id).Select(e => e.EnName).ToListAsync();
            var result = await data.ToListAsync();
            List<ChartResult> chartResult = new List<ChartResult>();
            foreach (var item in result)
            {
                List<int> budgetList = new List<int>();
                var compan = item.Compaign.OrderByDescending(s => s.CountryId).Select(e => new { e.Country.EnName, e.Budget });
                for (int i = 0; i < country.Count(); i++)
                {
                    var value = compan.Where(e => e.EnName == country[i]).Select(e => e.Budget).Any() ? compan.Where(e => e.EnName == country[i]).Select(e => Convert.ToInt32(e.Budget)).FirstOrDefault() : 0;
                    budgetList.Add(value);
                };
                chartResult.Add(new ChartResult
                {
                    Name = item.Name,
                    Data = budgetList
                });
            }
            return Json(new { series = chartResult, countries = country });
        }
        [HttpPost]
        public async Task<IActionResult> DeleteCompaign(int? id)
        {
            var compaign = await context.Compaign.FindAsync(id);
            if (compaign != null)
            {
                context.Remove(compaign);
                await context.SaveChangesAsync();
                return Ok("success");
            }
            return Ok("error");
        }
        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }

    public class ChartResult
    {
        public string Name { get; set; }
        public List<int> Data { get; set; }

    }
    public class Response
    {
        public string Url { get; set; }
        public Category Category { get; set; }
    }
    public class Category
    {
        public int Id { get; set; }
        public string Name { get; set; }
    }

}
