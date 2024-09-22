using CourierManagement.Areas.Identity.Model;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace CourierManagement.Data;

public class CourierManagementContext : IdentityDbContext<ApplicationUser>
{
    public CourierManagementContext(DbContextOptions<CourierManagementContext> options)
        : base(options)
    {
    }

    protected override void OnModelCreating(ModelBuilder builder)
    {
        base.OnModelCreating(builder);
        // Customize the ASP.NET Identity model and override the defaults if needed.
        // For example, you can rename the ASP.NET Identity table names and more.
        // Add your customizations after calling base.OnModelCreating(builder);
    }
    public DbSet<CourierManagement.DataModel.Lookup> Lookups { get; set; } = default!;
}
