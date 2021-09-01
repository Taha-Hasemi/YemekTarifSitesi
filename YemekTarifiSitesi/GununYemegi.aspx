<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifiSitesi.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        text-align: center;
        margin-left: 40px;
    }
    .auto-style5 {
        text-align: left;
        margin-left: 40px;
    }
    .auto-style6 {
        font-size: large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        &nbsp;&nbsp;&nbsp;
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" style="font-weight: 700; font-size: x-large" Text='<%# Eval("YemekAd") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;<strong><span class="auto-style6">Malzemeler:</span></strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"><strong><span class="auto-style6">Tarif:</span></strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Image ID="Image1" runat="server" Height="182px" style="text-align: center" Width="254px" ImageUrl='<%# Eval("YemekResim") %>' />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <table class="auto-style1">
                        <tr>
                            <td><strong><span class="auto-style6">Puan:</span></strong>&nbsp;<asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                            </td>
                            <td><strong><span class="auto-style6">Eklenme Tarih: </span></strong>
                                <asp:Label ID="Label7" runat="server" style="font-style: italic" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
