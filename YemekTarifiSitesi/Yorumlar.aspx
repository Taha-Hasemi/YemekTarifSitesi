<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekTarifiSitesi.Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 319px;
        }

        .auto-style8 {
            width: 74px;
        }

        .auto-style9 {
            width: 24px;
        }

        .auto-style11 {
            width: 72px;
            font-weight: bold;
        }

        .auto-style12 {
            width: 26px;
        }

        .auto-style13 {
            width: 39px;
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
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style11" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </strong></td>
                <td>ONAYLANAN YORUM LISTESI</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="445px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style13">
                            <a href="YorumDetay.aspx?YorumID=<%#Eval("YorumID") %>&islem=Sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Icons/delete.png" Width="30px" />
                            </a>
                        </td>
                        <td style="text-align: right">
                            <a href="YorumDetay.aspx?YorumID=<%# Eval("YorumID") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/edit.png" Width="44px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

    <asp:Panel ID="Panel3" runat="server" Style="background-color: #66FFCC; margin-top:15px;">
        <table class="auto-style4">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style11" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </strong></td>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style11" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </strong></td>
                <td>ONAYLANMAYAN YORUM LISTESI</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="445px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style13">
                            <a href="YorumDetay.aspx?YorumID=<%#Eval("YorumID") %>&islem=Sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Icons/delete.png" Width="30px" />
                            </a>
                        </td>
                        <td style="text-align: right">
                            <a href="YorumDetay.aspx?YorumID=<%# Eval("YorumID") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Icons/edit.png" Width="44px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
