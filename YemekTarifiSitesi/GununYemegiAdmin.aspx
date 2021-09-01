<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="YemekTarifiSitesi.GununYemegiAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 30px;
        }

        .auto-style11 {
            font-size: x-large;
            font-weight: bold;
        }

        .auto-style10 {
            width: 29px;
        }

        .auto-style7 {
            width: 377px;
        }

        .auto-style8 {
            font-size: large;
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
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td style="text-align: right">
                            <a href="YemekDuzenle.aspx?YemekID=<%# Eval("YemekID") %>">
                                <asp:Image ID="Image3" runat="server" Height="37px" ImageUrl="~/Icons/Choose.png" Width="44px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

</asp:Content>
