<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="YemekTarifiSitesi.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style6 {
            text-align: right;
        }
        .auto-style7 {
            text-align: right;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
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
            <td class="auto-style6"><strong>Tarif ad:</strong></td>
            <td>
                <asp:TextBox ID="txtTarifAd" runat="server" CssClass="tb"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Tarif Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="txtMalzemeler" runat="server" CssClass="tb" Height="150px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Yapılış:</strong></td>
            <td>
                <asp:TextBox ID="txtYapilis" runat="server" CssClass="tb" Height="150px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Tarif Resim:</strong></td>
            <td class="auto-style8">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Tarif Öneren:</strong></td>
            <td>
                <asp:TextBox ID="txtTarifOneren" runat="server" CssClass="tb"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Öneren Mail:</strong></td>
            <td>
                <asp:TextBox ID="txtTarifOnerenMail" runat="server" CssClass="tb" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnOnayla" runat="server" CssClass="tb" Text="Onayla" Width="77px" OnClick="btnOnayla_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
