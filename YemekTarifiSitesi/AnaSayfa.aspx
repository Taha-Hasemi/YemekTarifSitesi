<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="YemekTarifiSitesi.AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" style="margin-right: 0px" Width="442px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td style="background-color: #CCCCCC">
                        <a href="YemekDetay.aspx?YemekID=<%# Eval("YemekID") %>">
                            <asp:Label ID="Label3" runat="server" Style="font-weight: 700; font-size: x-large" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td><strong>Malzemeler:</strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Tarif: </strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;-&nbsp;<asp:Label ID="Label7" runat="server" Style="font-weight: 700" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label8" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-color: #000000; border-width: thick; border-top-style: inherit; border-right-style: inherit; border-bottom-style: solid; border-left-style: inherit">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
