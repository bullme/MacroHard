<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="MacroHard.ProductDetails" %>
<%@ OutputCache Duration="3600" VaryByParam="Product_id" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:GridView
     ID="ProductDetailsView"
     DataSourceID="ProductView"
     AutoGenerateColumns="false"
     runat="server">
     <Columns>
         <asp:BoundField DataField="Product_Desc" HeaderText="Product"/>
         <asp:BoundField DataField="Price" DataFormatString="{0:c}" HtmlEncode="false" HeaderText="Price"/>
         <asp:ImageField AccessibleHeaderText="ProductImage" DataImageUrlField="img_src"></asp:ImageField>
     </Columns>
</asp:GridView>
<asp:SqlDataSource ID="ProductView"
     EnableCaching="true"
     CacheDuration="600" CacheExpirationPolicy="Sliding" ConflictDetection="CompareAllValues"
     ConnectionString="<%$ ConnectionStrings:ConnectDB %>"
     SelectCommand="SELECT Product_desc,Price,img_src FROM Product_t WHERE product_ID=@product_ID"
     runat="server">
     <SelectParameters>
         <asp:QueryStringParameter Name="product_ID"
              QueryStringField="product_ID" />
     </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
