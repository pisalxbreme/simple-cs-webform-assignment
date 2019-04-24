using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var product = (new ProductRepository()).GetProductById(int.Parse(Request.QueryString.Get("ID")));

        BindViews(product);
    }

    private void BindViews(Product product) {
        if (!IsPostBack)
        {
            TxtProductCode.Text = product.ProductCode;
            TxtProductName.Text = product.ProductName;
            TxtPrice.Text = product.Price.ToString();
            TxtUnit.Text = product.Unit;
            DDLCategory.SelectedValue = product.Category;
            DDLCountry.SelectedValue = product.Country;
        }
    }


    protected void BtnSave_Click(object sender, EventArgs e) {
        Product product = new Product
        {
            ID = int.Parse(Request.QueryString.Get("ID")),
            ProductCode = TxtProductCode.Text,
            ProductName = TxtProductName.Text,
            Price = double.Parse(TxtPrice.Text),
            Unit = TxtUnit.Text,
            Category = DDLCategory.SelectedValue,
            Country = DDLCountry.SelectedValue
        };
        (new ProductRepository()).UpdateProduct(product);

        Response.Redirect("~/Default.aspx");
    }
}