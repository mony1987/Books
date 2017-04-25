<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="EL_bookstore.Details" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style24 {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="BookID" DataSourceID="SqlDataSource1" CssClass="auto-style24" Height="92px" Width="804px" meta:resourcekey="FormView1Resource1">
    <EditItemTemplate>
        BookID:
        <asp:Label ID="BookIDLabel1" runat="server" Text='<%# Eval("BookID") %>' meta:resourcekey="BookIDLabel1Resource1" />
        <br />
        BookAuthor:
        <asp:TextBox ID="BookAuthorTextBox" runat="server" Text='<%# Bind("BookAuthor") %>' meta:resourcekey="BookAuthorTextBoxResource1" />
        <br />
        BookTitle:
        <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' meta:resourcekey="BookTitleTextBoxResource1" />
        <br />
        BookDescription:
        <asp:TextBox ID="BookDescriptionTextBox" runat="server" Text='<%# Bind("BookDescription") %>' meta:resourcekey="BookDescriptionTextBoxResource1" />
        <br />
        BookPrice:
        <asp:TextBox ID="BookPriceTextBox" runat="server" Text='<%# Bind("BookPrice") %>' meta:resourcekey="BookPriceTextBoxResource1" />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CommandName="Update" Text="Update" meta:resourcekey="UpdateButtonResource1" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" meta:resourcekey="UpdateCancelButtonResource1" />
    </EditItemTemplate>
    <InsertItemTemplate>
        BookID:
        <asp:TextBox ID="BookIDTextBox" runat="server" Text='<%# Bind("BookID") %>' meta:resourcekey="BookIDTextBoxResource1" />
        <br />
        BookAuthor:
        <asp:TextBox ID="BookAuthorTextBox" runat="server" Text='<%# Bind("BookAuthor") %>' meta:resourcekey="BookAuthorTextBoxResource2" />
        <br />
        BookTitle:
        <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' meta:resourcekey="BookTitleTextBoxResource2" />
        <br />
        BookDescription:
        <asp:TextBox ID="BookDescriptionTextBox" runat="server" Text='<%# Bind("BookDescription") %>' meta:resourcekey="BookDescriptionTextBoxResource2" />
        <br />
        BookPrice:
        <asp:TextBox ID="BookPriceTextBox" runat="server" Text='<%# Bind("BookPrice") %>' meta:resourcekey="BookPriceTextBoxResource2" />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" meta:resourcekey="InsertButtonResource1" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" meta:resourcekey="InsertCancelButtonResource1" />
    </InsertItemTemplate>
    <ItemTemplate>
        Книга N:
        <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' Visible="False" meta:resourcekey="BookIDLabelResource1" />
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "./BookPictures/" + Eval("BookID") + ".jpg" %>' meta:resourcekey="Image1Resource1" />
        <br />
        Автор:
        <asp:Label ID="BookAuthorLabel" runat="server" Text='<%# Bind("BookAuthor") %>' ForeColor="#FF5050" meta:resourcekey="BookAuthorLabelResource1" />
        <br />
        Заглавие:
        <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Bind("BookTitle") %>' ForeColor="#FF5050" meta:resourcekey="BookTitleLabelResource1" />
        <br />
        Описание:
        <asp:Label ID="BookDescriptionLabel" runat="server" Text='<%# Bind("BookDescription") %>' ForeColor="#FF5050" meta:resourcekey="BookDescriptionLabelResource1" />
        <br />
        Цена:
        <asp:Label ID="BookPriceLabel" runat="server" Text='<%# Bind("BookPrice") %>' ForeColor="Red" meta:resourcekey="BookPriceLabelResource1" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Количество     " meta:resourcekey="Label1Resource2"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="40px" meta:resourcekey="TextBox1Resource1"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 31px" Text="Добавете в кошницата" Width="203px" meta:resourcekey="Button1Resource1" />
        <br />

    </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString6 %>" SelectCommand="SELECT [BookID], [BookAuthor], [BookTitle], [BookDescription], [BookPrice] FROM [Books] WHERE ([BookID] = @BookID)">
    <SelectParameters>
        <asp:QueryStringParameter Name="BookID" QueryStringField="BookID" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Label" meta:resourcekey="Label2Resource1"></asp:Label>
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Menu.aspx" OnClick="LinkButton1_Click" meta:resourcekey="LinkButton1Resource1">Назад</asp:LinkButton>
</asp:Content>
