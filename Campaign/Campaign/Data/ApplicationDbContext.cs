using System;
using System.Collections.Generic;
using System.Text;
using Campaign.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace Campaign.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
        public DbSet<Country> Countr { get; set; }

        public DbSet<CategoryCompaign> Category { get; set; }

        public DbSet<Compaign> Compaign { get; set; }

    }
}
