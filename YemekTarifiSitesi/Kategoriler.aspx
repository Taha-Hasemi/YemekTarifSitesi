<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifiSitesi.Kategoriler" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Kullanici.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style6 {
            text-align: right;
            width: 104px;
        }

        .auto-style7 {
            width: 222px;
        }

        .auto-style8 {
            font-size: large;
        }

        .auto-style9 {
            width: 30px;
        }

        .auto-style10 {
            width: 29px;
        }

        .auto-style11 {
            font-size: x-large;
            font-weight: bold;
        }

        .auto-style12 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Style="background-color: #66FFCC">
        <table class="auto-style4">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                </strong></td>
                <td class="auto-style10"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style11" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                </strong></td>
                <td>KATEGORI LISTESI</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <a href="Kategoriler.aspx?KategoriID=<%#Eval("KategoriID") %>&islem=Sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Icons/delete.png" Width="30px" />
                            </a>
                        </td>
                        <td style="text-align: right">
                            <a href="KategoriDuzenle.aspx?KategoriID=<%# Eval("KategoriID") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/edit.png" Width="44px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Style="background-color: #66FFCC; margin-top: 15px">
        <table class="auto-style4">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style11" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </strong></td>
                <td class="auto-style10"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style11" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </strong></td>
                <td>KATEGORI EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style4">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">Kategori Ad:</td>
                <td>
                    <asp:TextBox ID="txtKategoriAd" runat="server" CssClass="tb"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Kategori Icon</td>
                <td>
                    <asp:FileUpload ID="flUpldKategoriIcon" runat="server" CssClass="tb" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnEkle" runat="server" Text="EKLE" CssClass="tb" OnClick="btnEkle_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
