using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Category
/// </summary>
public class Category
{
    public string Name { get; set; }
    public int Length {
        get {
            return Name.Length;
        }
    }

    public Category(string name)
    {
        Name = name;
    }

}