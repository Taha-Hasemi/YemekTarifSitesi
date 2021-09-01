<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="YemekTarifiSitesi.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        font-weight: bold;
        text-align: right;
    }
    .auto-style5 {
        font-size: x-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style5" colspan="2"><em><strong>Mesaj Paneli</strong></em></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">Ad Soyad</td>
        <td>
            <asp:TextBox ID="txtAdSoyad" runat="server" CssClass="tb"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Mail Adresi:</td>
        <td>
            <asp:TextBox ID="txtMail" runat="server" CssClass="tb"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Konu:</td>
        <td>
            <asp:TextBox ID="txtKonu" runat="server" CssClass="tb"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Mesaj</td>
        <td>
            <asp:TextBox ID="txtMesaj" runat="server" CssClass="tb" Height="150px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Height="28px" Text="Gönder" Width="230px" CssClass="tb" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>
