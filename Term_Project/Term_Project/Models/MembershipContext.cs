namespace Term_Project.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class MembershipContext : DbContext
    {
        public MembershipContext()
            : base("name=MembershipConnection")
        {
        }

        public virtual DbSet<member> members { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<member>()
                .Property(e => e.lastName)
                .IsUnicode(false);

            modelBuilder.Entity<member>()
                .Property(e => e.firstName)
                .IsUnicode(false);
        }
    }
}
