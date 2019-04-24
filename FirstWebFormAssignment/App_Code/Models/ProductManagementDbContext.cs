using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ProductManagementDbContext
/// </summary>
public class ProductManagementDbContext: DbContext
{
    public DbSet<Product> Products { get; set; }
}