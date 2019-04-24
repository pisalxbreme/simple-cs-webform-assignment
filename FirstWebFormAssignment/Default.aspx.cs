using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridViewProduct_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void BtnDelete_Click(object sender, EventArgs e)
    {
        var button = (LinkButton)sender;
        var id = int.Parse(button.CommandArgument);
        (new ProductRepository()).DeleteProduct(id);
        Response.Redirect("~/Default.aspx");
    }


}