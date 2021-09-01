<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifiSitesi.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        text-align: right;
        font-weight: bold;
    }
    .auto-style5 {
        text-align: right;
        font-weight: bold;
        height: 30px;
    }
    .auto-style6 {
        height: 30px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">Tarif Ad:</td>
        <td>
            <asp:TextBox ID="txtTarifAd" runat="server" Width="250px" CssClass="tb"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Malzemeler</td>
        <td>
            <asp:TextBox ID="txtTarifMelzeme" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Yapılış</td>
        <td>
            <asp:TextBox ID="txtTarifYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Resim</td>
        <td>
            <asp:FileUpload ID="fileUploadResim" runat="server" Width="250px" CssClass="tb" />
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Tarif Öneren</td>
        <td class="auto-style6">
            <asp:TextBox ID="txtTarifOneren" runat="server" Width="250px" CssClass="tb"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Mail</td>
        <td>
            <asp:TextBox ID="txtOnerenMail" runat="server" TextMode="Email" Width="250px" CssClass="tb"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnTarifOner" runat="server" BackColor="#00FFCC" style="font-weight: 700; font-style: italic; margin-left: 60px" Text="Tarif Öner" Width="150px" OnClick="btnTarifOner_Click" CssClass="tb" />
        </td>
    </tr>
</table>
</asp:Content>
