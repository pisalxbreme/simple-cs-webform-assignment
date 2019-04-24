using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Country
/// </summary>
public class Country
{
    public string Name { get; set; }
    public int Length
    {
        get
        {
            return Name.Length;
        }
    }
    public Country(string name) {
        Name = name;
    }
}