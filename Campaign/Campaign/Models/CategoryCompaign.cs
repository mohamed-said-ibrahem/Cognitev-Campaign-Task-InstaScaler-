using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Campaign.Models
{
    public class CategoryCompaign
    {

        public int Id { get; set; }
        public int? RelatedId { get; set; }

        [Required]
        [Display(Name = "Name")]
        public string Name { get; set; }
        public DateTime CreateDate { get; set; }
        public IEnumerable<Compaign> Compaign { get; set; }
    }
}