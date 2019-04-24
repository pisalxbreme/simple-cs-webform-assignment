using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Create : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnSave_Click(object sender, EventArgs e)
    {
        Product newProduct = new Product {
            ProductCode = TxtProductCode.Text,
            ProductName = TxtProductName.Text,
            Price = double.Parse(TxtPrice.Text),
            Unit = TxtUnit.Text,
            Category = DDLCategory.SelectedValue,
            Country = DDLCountry.SelectedValue
        };

        (new ProductRepository()).InsertProduct(newProduct);

        Response.Redirect("~/Default.aspx");
    }
}