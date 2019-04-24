<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Create.aspx.cs" Inherits="Create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 40px">
            Product Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtProductCode" runat="server" Width="140px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            Product Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtProductName" runat="server"  Width="140px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtPrice" runat="server" Width="140px"></asp:TextBox>
            <br />
            <br />
            Unit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TxtUnit" runat="server" Width="140px"></asp:TextBox>
            <br />
            <br />
            Category&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DDLCategory" runat="server" DataSourceID="PreDataSource" DataTextField="Name" DataValueField="Name">
                <asp:ListItem Value="">Select a Category</asp:ListItem>
            </asp:DropDownList>
            <asp:ObjectDataSource ID="PreDataSource" runat="server" SelectMethod="GetCategories" TypeName="PreData"></asp:ObjectDataSource>
            <br />
            <br />
            Country&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DDLCountry" runat="server" DataSourceID="CountryDataSource" DataTextField="Name" DataValueField="Name" Height="16px">
                <asp:ListItem Value="">Select a Country</asp:ListItem>
            </asp:DropDownList>
            <asp:ObjectDataSource ID="CountryDataSource" runat="server" SelectMethod="GetCountries" TypeName="PreData"></asp:ObjectDataSource>
            <br />
            <asp:Button ID="BtnSave" runat="server" OnClick="BtnSave_Click" Text="Save" ValidateRequestMode="Enabled" />
        </div>
    </form>
</body>
</html>
