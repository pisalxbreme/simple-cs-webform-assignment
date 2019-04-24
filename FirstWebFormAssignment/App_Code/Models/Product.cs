using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Product
/// </summary>
public class Product
{
    public int ID { get; set;  }
    public string ProductCode { get; set; }       
    public string ProductName { get; set; }
    public double Price { get; set; }
    public string Unit { get; set; }
    public string Category { get; set; }
    public string Country { get; set; }


    public Product(){}

}