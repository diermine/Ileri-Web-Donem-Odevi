<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Soru2.aspx.cs" Inherits="Ödev.Soru2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 161%;
        height: 204px;
    }
    .auto-style4 {
        width: 107px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div _designerregion="0">
    <table class="auto-style3">
        <tr>
            <td aria-orientation="horizontal" class="auto-style4">Ürün Seçin:</td>
            <td>
                <asp:RadioButtonList ID="liste" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem Value="21,52">Tadım Kavrulmuş Siyah Ayçekirdeği 180 G</asp:ListItem>
                    <asp:ListItem Value="43,12">Tadım Ceviz İçi 150 G</asp:ListItem>
                    <asp:ListItem Value="51,12">Tadım Çiğ Badem 180 G</asp:ListItem>
                    <asp:ListItem Value="89,52">Tadım Antep Fıstığı 180 G</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Fiyat:</td>
            <td>
                <asp:Label ID="Label3" runat="server" CssClass="yazi2" Text="...."></asp:Label>
                <asp:Label ID="Label4" runat="server" CssClass="yazi2" Text="TL"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Adet Girin:</td>
            <td>
                <asp:TextBox ID="sayi" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Button ID="Button3" runat="server" CssClass="btn" OnClick="Button3_Click" Text="Sepete Ekle!" />
            </td>
        </tr>
    </table>
</div>
</asp:Content>

