<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="EL_bookstore.Menu" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style10 {
        background-color: #003366;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server"  ContentPlaceHolderID="ContentPlaceHolder1" >  
    <asp:Label ID="Label1" runat="server" Font-Underline="True" ForeColor="#FF0066" Text="Меню и категории" meta:resourcekey="Label1Resource1"></asp:Label>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="113px" CellPadding="4" GridLines="None" ShowHeader="False" CssClass="auto-style10" ForeColor="#333333" meta:resourcekey="GridView3Resource1">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField meta:resourcekey="TemplateFieldResource1">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkBtn" runat="server" OnClick="LinkBtn_Click" Text='<%# Eval("BookType") %>' meta:resourcekey="LinkBtnResource1" ></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" ForeColor="Navy" Font-Bold="True" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString5 %>" SelectCommand="SELECT DISTINCT BookType FROM Books"></asp:SqlDataSource>
       

  
    
  
    <br />
    <asp:Label ID="Label2" runat="server" Text="Търсене" meta:resourcekey="Label2Resource1"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox1" runat="server" Width="58px" meta:resourcekey="TextBox1Resource1"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" PostBackUrl="~/Menu.aspx" Text="Търсене" meta:resourcekey="Button1Resource1" />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Кошница:" meta:resourcekey="Label3Resource1"></asp:Label>
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/images.jpg" PostBackUrl="~/Koshnica.aspx" Width="25px" meta:resourcekey="ImageButton1Resource1" />
       

  
    
  
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2" >
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="720px" ForeColor="#333333" Height="128px" style="margin-left: 0px" CellPadding="4" GridLines="None" meta:resourcekey="GridView2Resource1" >
        <AlternatingRowStyle BackColor="White" />
        <Columns >
            <asp:BoundField DataField="BookID" HeaderText="Книга N" ReadOnly="True" SortExpression="BookID" meta:resourcekey="BoundFieldResource1" />
            <asp:BoundField DataField="BookTitle" HeaderText="Заглавие" SortExpression="BookTitle" meta:resourcekey="BoundFieldResource2" />
            <asp:BoundField DataField="BookType" HeaderText="Тип" SortExpression="BookType" meta:resourcekey="BoundFieldResource3" />
            <asp:BoundField DataField="BookAuthor" HeaderText="Автор" SortExpression="BookAuthor" meta:resourcekey="BoundFieldResource4" />
            <asp:BoundField DataField="BookPrice" HeaderText="Цена" SortExpression="BookPrice" meta:resourcekey="BoundFieldResource5" />
            <asp:CommandField ShowSelectButton="True" SelectText="Виж детайли за книгата" meta:resourcekey="CommandFieldResource1"/>
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString4 %>" SelectCommand="SELECT  [BookID], [BookTitle], [BookType], [BookAuthor], [BookPrice] FROM [Books] WHERE ([BookType] = @BookType)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="web" Name="BookType" QueryStringField="Category" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

