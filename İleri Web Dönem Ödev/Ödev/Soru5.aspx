<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Soru5.aspx.cs" Inherits="Ödev.Soru5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 104%;
        height: 513px;
    }
    .auto-style4 {
            height: 30px;
        }
    .auto-style6 {
        height: 26px;
    }
        .auto-style7 {
            width: 274px;
        }
        .auto-style8 {
            height: 26px;
            width: 274px;
        }
        .auto-style9 {
            height: 30px;
            width: 274px;
        }
        .auto-style10 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
    <tr>
        <td colspan="2" style="color: blue"><strong>ÜYE KAYIT FORMU</strong></td>
    </tr>
    <tr>
        <td class="auto-style7">Ad Soyad:</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Width="137px" CssClass="auto-style10" Height="21px" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" CssClass="yazi2" ErrorMessage="Ad Soyad Boş Bırakılamaz" ValidationGroup="Button3Validation">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Kullanıcı Adı:</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Height="22px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" CssClass="yazi2" ErrorMessage="Kullanıcı Adı Boş Bırakılamaz" ValidationGroup="Button3Validation">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" CssClass="yazi2" ErrorMessage="Kullanıcı Adı En Az 5 Karakter Olmalıdır" ValidationExpression="^.{5,}$" ValidationGroup="Button3Validation">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Parola:</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" CssClass="yazi2" ErrorMessage="Parola Boş Bırakılamaz" ValidationGroup="Button3Validation">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Tekrar Parola:</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" CssClass="yazi2" ErrorMessage="Tekrar Parola Boş Bırakılamaz" ValidationGroup="Button3Validation">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" CssClass="yazi2" ErrorMessage="Girilen Parolalar Uyuşmuyor" ValidationGroup="Button3Validation">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">E-Posta Adresi:</td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" CssClass="yazi2" ErrorMessage="Posta Boş Bırakılamaz" ValidationGroup="Button3Validation">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox7" CssClass="yazi2" ErrorMessage="Geçersiz Mail Adresi Girmeyiniz" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Button3Validation">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Adres:</td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox8" runat="server" Height="187px" TextMode="MultiLine" Width="344px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox8" CssClass="yazi2" ErrorMessage="Adres Boş Bırakılamaz" ValidationGroup="Button3Validation">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td>
            <asp:Button ID="Button3" runat="server" CssClass="btn" Text="Kaydet" OnClick="Button3_Click" ValidationGroup="Button3Validation"/>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="Button3Validation"/>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
