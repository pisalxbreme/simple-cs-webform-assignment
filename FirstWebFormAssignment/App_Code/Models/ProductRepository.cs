using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ProductRepository
/// </summary>
public class ProductRepository
{
    private readonly ProductManagementDbContext dbContext = new ProductManagementDbContext();

    public List<Product> GetProducts() {
        return (from p in dbContext.Products select p).ToList();
    }

    public void InsertProduct(Product product)
    {
        dbContext.Products.Add(product);
        dbContext.SaveChanges();
    }

    public void UpdateProduct(Product product) {
        var existingProduct = dbContext.Products.Find(product.ID);
        if (existingProduct == null) return;
        dbContext.Entry(existingProduct).CurrentValues.SetValues(product);
        dbContext.SaveChanges();
    }

    public void DeleteProduct(int productId) {
        var existingProduct = dbContext.Products.Where(p => p.ID == productId).FirstOrDefault();
        if (existingProduct != null) {
            dbContext.Products.Remove(existingProduct);
            dbContext.SaveChanges();
        }
    }

    public Product GetProductById(int id) {
        return dbContext.Products.Find(id);
    }
}