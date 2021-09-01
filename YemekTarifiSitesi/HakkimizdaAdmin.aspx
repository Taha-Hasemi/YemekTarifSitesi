<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="YemekTarifiSitesi.HakkimizdaAdmin" %>

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
        .auto-style12 {
            margin-left: 80px;
        }
        .auto-style14 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 20px;
            width: 230px;
            font-size: large;
            font-weight: bold;
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
                <td>HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox1" runat="server" Height="300px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style14" Height="30px" Text="GÜNCELLE" Width="200px" OnClick="Button3_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>  
</asp:Content>
