<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Soru3.aspx.cs" Inherits="Ödev.Soru3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        height: 25px;
    }
    .auto-style4 {
        width: 126px;
    }
    .auto-style5 {
        height: 25px;
        width: 126px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style4">Seçilen Ürün:</td>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Seçilen Adet:</td>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Sepet Tutarı:</td>
        <td class="auto-style3">
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td>
            <asp:Button ID="Button3" runat="server" CssClass="btn" Height="49px" Text="Onay!" Width="118px" OnClick="Button3_Click" />
        </td>
    </tr>
</table>
</asp:Content>
