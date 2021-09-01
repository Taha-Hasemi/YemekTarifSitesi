<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="YemekTarifiSitesi.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Ad Soyad:</strong></td>
            <td>
                <asp:TextBox ID="txtAdSoyad" runat="server" CssClass="tb"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Mail Adresi</strong></td>
            <td>
                <asp:TextBox ID="txtMailAdres" runat="server" CssClass="tb"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>İçerik:</strong></td>
            <td>
                <asp:TextBox ID="txtIcerik" runat="server" CssClass="tb" Height="150px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Yemek</strong></td>
            <td>
                <asp:TextBox ID="txtYemek" runat="server" CssClass="tb"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnOnayla" runat="server" CssClass="tb" OnClick="btnOnayla_Click" Text="Onayla" Width="77px" />
            </td>
        </tr>
    </table>
</asp:Content>
