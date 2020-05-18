using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using VlasniciParcelaApp.Models;

namespace VlasniciParcelaApp.Data
{
    public class VlasnikDbContext : DbContext
    {
        public VlasnikDbContext(DbContextOptions<VlasnikDbContext> options)
            : base(options)
        {
        }

        public DbSet<Vlasnik> Vlasnik { get; set; }
    }
}
