<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Soru4.aspx.cs" Inherits="Ödev.Soru4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 120%;
            height: 377px;
        }
        .auto-style4 {
            height: 24px;
        }
        .auto-style5 {
            width: 325px;
        }
        .auto-style6 {
            height: 24px;
            width: 325px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
        <tr>
            <td class="auto-style5">Bölüm Seçin:</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Uzman:</td>
            <td class="auto-style4">
                <asp:Label ID="Label3" runat="server" CssClass="yazi2" Text="Doktor"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Tarih Seçin:</td>
            <td>
                <asp:Label ID="Label4" runat="server" CssClass="tyazi" Font-Bold="True" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                <br />
                <asp:Calendar ID="Calendar1" runat="server" OnDayRender="denetle" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Button ID="Button3" runat="server" CssClass="btn" OnClick="Button3_Click" Text="Kaydet!" />
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" CssClass="btn" OnClick="Button4_Click" Text="Listele" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label5" runat="server" CssClass="yazi2" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
