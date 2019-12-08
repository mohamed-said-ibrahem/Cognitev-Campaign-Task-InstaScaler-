using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Campaign.Models
{
    public class Compaign
    {
        public int Id { get; set; }
        [Required]
        [Display(Name = "Country")]
        public int? CountryId { get; set; }
        [Display(Name = "Category")]
        public int? CategoryId { get; set; }

        [Required]
        [Display(Name = "Name")]
        public string Name { get; set; }
        [Required]
        [Display(Name = "Budget")]
        public string Budget { get; set; }
        [Required]
        [Display(Name = "Goal")]
        public string Goal { get; set; }

        public DateTime CreateDate { get; set; }


        public Country Country { get; set; }
        public CategoryCompaign Category { get; set; }
    }


}
