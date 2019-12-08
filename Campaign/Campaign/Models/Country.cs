using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Campaign.Models
{
    public class Country
    {
        public int Id { get; set; }
        [Required]
        [Display(Name = "Name")]
        public string EnName { get; set; }
        [Required]
        [Display(Name = "Name")]
        public string ArName { get; set; }
        public DateTime CreatedOnUtc { get; set; }
        public DateTime UpdatedOnUtc { get; set; }
        public bool Hidden { get; set; }
        public int? DisplayOrder { get; set; }
        public IEnumerable<Compaign> Compaign { get; set; }
    }
}