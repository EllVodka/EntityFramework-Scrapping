using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Mission3.Data
{
    public class MyDbContext : DbContext
    {
        public MyDbContext()
        {

        }
        public MyDbContext(DbContextOptions<MyDbContext> options) : base(options)
        {

        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseMySQL("server=localhost;database=mission3;user=root;password=");

        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            /*base.OnModelCreating(modelBuilder);
            modelBuilder.Entity<Medicament>(e => e.Property(o => o.Id).HasColumnType("int").HasConversion<short>());*/
        }
        public DbSet<Medicament> Medicaments { get; set; }
        public DbSet<TypeMedicament> TypeMedicaments { get; set; }
    }
}
