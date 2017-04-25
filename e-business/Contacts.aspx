<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="EL_bookstore.Contacts" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style24 {
            width: 6px;
        }
        .auto-style25 {
            width: 66px;
            text-align: right;
        }
        .auto-style26 {}
        .auto-style27 {
            width: 211px;
        }
        .auto-style28 {}
        .auto-style29 {}
        .auto-style30 {
            text-align: right;
        }
        .auto-style31 {}
        .auto-style32 {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width: 100%; height: 154px;">
        <tr>
            <td class="auto-style25">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style30" Text="От:" meta:resourcekey="Label1Resource1"></asp:Label>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td colspan="4">
                <asp:TextBox ID="txtMailFrom" runat="server" CssClass="auto-style28" Width="256px" meta:resourcekey="txtMailFromResource1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">
                <asp:Label ID="Label2" runat="server" Text="До:" meta:resourcekey="Label2Resource1"></asp:Label>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td colspan="4">
                <asp:TextBox ID="txtMailTo" runat="server" CssClass="auto-style29" Width="257px" meta:resourcekey="txtMailToResource1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">
                <asp:Label ID="Label3" runat="server" Text="Относно:" meta:resourcekey="Label3Resource1"></asp:Label>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td colspan="4">
                <asp:TextBox ID="txtSubject" runat="server" CssClass="auto-style31" Width="259px" meta:resourcekey="txtSubjectResource1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">
                <asp:Label ID="Label4" runat="server" Text="Запитване:" meta:resourcekey="Label4Resource1"></asp:Label>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td colspan="4">
                <asp:TextBox ID="txtBody" runat="server" CssClass="auto-style32" Height="123px" TextMode="MultiLine" Width="264px" meta:resourcekey="txtBodyResource1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#FF5050" BorderColor="#CC0000" CssClass="auto-style26" OnClick="Button1_Click" Text="Изпрати" Width="75px" meta:resourcekey="Button1Resource1" />
            </td>
        </tr>
        <tr>
            <td class="auto-style25">
                <asp:Label ID="lblMailMsg" runat="server" ForeColor="Red" Text="MailMsg" meta:resourcekey="lblMailMsgResource1"></asp:Label>
            </td>
            <td class="auto-style24">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
<br />
    <br />
    <br />
    <br />
</asp:Content>
