using Campaign.Data;
using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Campaign.Controllers
{
    public class Common
    {
        private readonly ApplicationDbContext context;
        public Common(ApplicationDbContext context)
        {
            this.context = context;
        }

        public SelectList GetCountry()
        {
            var countries = new SelectList(context.Countr.Where(e => e.Hidden != true).Select(e => new { e.Id, Name = e.EnName }), "Id", "Name");
            return countries;
        }
        public SelectList GetCategory()
        {
            var categories = new SelectList(context.Category.Select(e => new { e.Id, Name = e.Name }), "Id", "Name");
            return categories;
        }

    }
}
