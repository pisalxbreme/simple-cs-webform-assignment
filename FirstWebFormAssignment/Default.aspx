<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<form id="FormProduct" runat="server">
    <asp:GridView ID="GridViewProduct" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="ProductRepository" OnSelectedIndexChanged="GridViewProduct_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" SortExpression="ProductCode" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:LinkButton ID="BtnEdit"  PostBackUrl='<%#"~/Edit.aspx?ID="+Eval("ID") %>' runat="server" CommandName="Edit" Text="Edit" />
                    <asp:LinkButton ID="BtnDelete" runat="server" CommandName="Remove" CommandArgument='<%#Eval("ID")%>' Text="Delete" OnClick="BtnDelete_Click"/>
                    <asp:LinkButton ID="BtnView" PostBackUrl='<%#"~/Details.aspx?ID="+Eval("ID") %>' runat="server" CommandName="View" Text="View" />
                </ItemTemplate>                
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ProductRepository" runat="server" SelectMethod="GetProducts" TypeName="ProductRepository" DataObjectTypeName="Product" DeleteMethod="DeleteProduct" InsertMethod="InsertProduct" UpdateMethod="UpdateProduct">
        <DeleteParameters>
            <asp:Parameter Name="productId" Type="Int32" />
        </DeleteParameters>
    </asp:ObjectDataSource>
    <br />
    <asp:HyperLink ID="ALinkCreateNew" runat="server" NavigateUrl="~/Create.aspx">Create New</asp:HyperLink>
    <br />
</form>


