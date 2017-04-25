<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl.ascx.cs" Inherits="EL_bookstore.WebUserControl" %>
<style type="text/css">
    .auto-style1 {
        width: 180px;
    }
    .auto-style2 {
        width: 180px;
        height: 23px;
    }
    .auto-style3 {
        height: 23px;
        width: 71px;
    }
    .auto-style4 {
        width: 71px;
    }
</style>
<table style="width:100%;">
    <tr>
        <td class="auto-style1">
            <asp:Label ID="lblBookID" runat="server" Text="Книга N:"></asp:Label>
        </td>
        <td class="auto-style4">
            <img alt="" src="" /></td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblBookID0" runat="server" Text="Заглавие:"></asp:Label>
        </td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblBookID1" runat="server" Text="Цена:"></asp:Label>
        </td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="lblBookID2" runat="server" Text="Количество:"></asp:Label>
        </td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="lblBookID3" runat="server" Text="Сума:"></asp:Label>
        </td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Отбележи за купуване" />
        </td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
</table>


