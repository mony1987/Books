<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="Koshnica.aspx.cs" Inherits="EL_bookstore.Koshnica" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label1" runat="server" style="text-align: center" Text="Във вашата кошница има:" meta:resourcekey="Label1Resource1"></asp:Label>
    <br />
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" RepeatColumns="3" Width="585px" meta:resourcekey="DataList1Resource1">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "./BookPictures/" + Eval("BookID") + ".jpg" %>' meta:resourcekey="Image1Resource1" />
            <br />
            Книга N:
            <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' meta:resourcekey="BookIDLabelResource1" />
            <br />
            Заглавие:
            <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' meta:resourcekey="BookTitleLabelResource1" />
            <br />
            Цена:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' meta:resourcekey="PriceLabelResource1" />
            <br />
            Количество:
            <asp:Label ID="SumQtyLabel" runat="server" Text='<%# Eval("SumQty") %>' meta:resourcekey="SumQtyLabelResource1" />
            <br />
            Сума:
            <asp:Label ID="SumPriceLabel" runat="server" Text='<%# Eval("SumPrice") %>' meta:resourcekey="SumPriceLabelResource1" />
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text=" Отбележете за премахване" meta:resourcekey="CheckBox1Resource1" />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" SelectCommand="SELECT BookID, BookTitle, Price, SUM(Qty) AS SumQty, SUM(Qty * Price) AS SumPrice FROM ShopCart GROUP BY BookID, BookTitle, Price"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" SelectCommand="SELECT SUM(Qty * Price) AS Sum, Qty FROM ShopCart GROUP BY Qty"></asp:SqlDataSource>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="107px" meta:resourcekey="GridView1Resource1" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Sum" HeaderText="Общо:" ReadOnly="True" SortExpression="Sum" meta:resourcekey="BoundFieldResource1" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Изтриване" meta:resourcekey="Button1Resource1" />
    <br />
    <br />
    
</asp:Content>
