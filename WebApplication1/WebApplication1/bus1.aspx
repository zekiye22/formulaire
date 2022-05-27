<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="bus1.aspx.cs" Inherits="WebApplication1.bus1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 351px; height: 20px;"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td style="width: 351px; height: 20px;"></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBoxcode" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 351px; height: 20px;">code:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBoxmatricule" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 351px">matricule;</td>
            <td>
                <asp:TextBox ID="TextBoxdesignation" runat="server" Width="243px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 351px">designation:<br />
            </td>
            <td>
                <asp:Button ID="BtnAjouter" runat="server" OnClick="BtnAjouter_Click" Text="ajouter" />
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="vider champ" />
            </td>
        </tr>
        <tr>
            <td style="width: 351px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 351px">&nbsp;</td>
            <td><asp:Button ID="BtnSupprimer" runat="server" Text="supprimer" OnClick="BtnSupprimerClick" />
            </td>
        </tr>
        <tr>
            <td style="width: 351px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 351px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 351px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
