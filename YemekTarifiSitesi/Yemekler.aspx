<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekTarifiSitesi.Yemekler" %>

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
        .auto-style13 {
            border-radius: 10px;
            width: 230px;
            border: 2px solid #456879;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Style="background-color: #66FFCC">
        <table class="auto-style4">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </strong></td>
                <td class="auto-style10"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style11" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </strong></td>
                <td>YEMEK LISTESI</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <itemtemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <a href="Yemekler.aspx?YemekID=<%#Eval("YemekID") %>&islem=Sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Icons/delete.png" Width="30px" />
                            </a>
                        </td>
                        <td style="text-align: right">
                            <a href="YemekDuzenle.aspx?YemekID=<%# Eval("YemekID") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/edit.png" Width="44px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </itemtemplate>
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
                <td>YEMEK EKLEME</td>
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
                <td class="auto-style12"><strong>Yemek Ad:</strong></td>
                <td>
                    <asp:TextBox ID="txtYemekAd" runat="server" CssClass="tb" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Malzemeler:</strong></td>
                <td>
                    <asp:TextBox ID="txtYemekMalzeme" runat="server" CssClass="tb" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Yemek Tarifi:</strong></td>
                <td>
                    <asp:TextBox ID="txtYemekTarif" runat="server" CssClass="tb" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Kategori:</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="tb" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Resim:</strong></td>
                <td class="auto-style5">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnEkle" runat="server" CssClass="auto-style13" OnClick="btnEkle_Click" Text="EKLE" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
