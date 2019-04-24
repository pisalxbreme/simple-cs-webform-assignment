<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Create.aspx.cs" Inherits="Views_Create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="ProductRepository">
        </asp:FormView>
        <asp:ObjectDataSource ID="ProductRepository" runat="server"></asp:ObjectDataSource>
    </form>
</body>
</html>
