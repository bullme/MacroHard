<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="MacroHard.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPlaceHolder1" runat="server">
    <asp:GridView runat="server" ID="ProductList" DataSourceID="getProducts" AutoGenerateColumns="false">
        <Columns>
            <%--<asp:BoundField DataField="Product_Desc" HeaderText="Product"/>--%>
            <asp:HyperLinkField HeaderText="Product" DataTextField="Product_Desc" DataNavigateUrlFields="Product_id" DataNavigateUrlFormatString="ProductDetails.aspx?product_id={0}"/>
            <asp:BoundField DataField="Price" DataFormatString="{0:c}" HtmlEncode="false" HeaderText="Price"/>
            <%--<asp:BoundField DataField="img_src" />--%>
        </Columns>

    </asp:GridView>

    <asp:SqlDataSource ID="getProducts" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectDB %>"
         SelectCommand="SELECT Product_id,Product_Desc,Price FROM Product_t">
         
    </asp:SqlDataSource>
         
</asp:Content>
