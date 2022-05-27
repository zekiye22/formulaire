<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="WebApplication1.Clients_Abdel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td colspan="2" style="height: 20px"></td>
            <td style="height: 20px" colspan="2"></td>
            <td style="height: 20px">&nbsp;</td>
            <td style="height: 20px">&nbsp;</td>
            <td style="height: 20px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 9px; background-color: #FFFFFF;" colspan="2"><b><span style="font-weight: normal">code</span></b></td>
            <td style="height: 9px; font-size: 8pt;" colspan="2">
                <asp:TextBox ID="TextBoxcode" runat="server"></asp:TextBox>
            </td>
            <td style="height: 9px; font-size: 8pt;">
                &nbsp;</td>
            <td style="height: 9px; font-size: 8pt;">
                &nbsp;</td>
            <td style="height: 9px; font-size: 8pt;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; background-color: #FFFFFF;" colspan="2"><b><span style="font-weight: normal">nom</span></b></td>
            <td style="height: 23px; font-size: 8pt;" colspan="2">
                <asp:TextBox ID="TextBoxnom" runat="server"></asp:TextBox>
            </td>
            <td style="height: 23px; font-size: 8pt;">
                &nbsp;</td>
            <td style="height: 23px; font-size: 8pt;">
                &nbsp;</td>
            <td style="height: 23px; font-size: 8pt;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="background-color: #FFFFFF;" colspan="2"><b><span style="font-weight: normal">prenom</span></b></td>
            <td colspan="2">
                <asp:TextBox ID="textboxprenom" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="background-color: #FFFFFF;" colspan="2"><b><span style="font-weight: normal">codepostal</span></b></td>
            <td colspan="2">
                <asp:TextBox ID="TextBoxcodepostal" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="background-color: #FFFFFF; height: 22px;" colspan="2"><b><span style="font-weight: normal">commune</span></b></td>
            <td style="font-size: 8pt; height: 22px;" colspan="2">
                <asp:TextBox ID="TextBoxcommune" runat="server" Width="118px"></asp:TextBox>
            </td>
            <td style="font-size: 8pt; height: 22px;">
                &nbsp;</td>
            <td style="font-size: 8pt; height: 22px;">
                &nbsp;</td>
            <td style="font-size: 8pt; height: 22px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-lg" style="height: 23px; background-color: #FFFFFF; " colspan="2">adresse</td>
            <td style="height: 23px" colspan="2">
                <asp:TextBox ID="TextBoxadresse" runat="server"></asp:TextBox>
            </td>
            <td style="height: 23px">
                &nbsp;</td>
            <td style="height: 23px">
                &nbsp;</td>
            <td style="height: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="background-color: #FFFFFF;" colspan="2">date de naissance</td>
            <td colspan="2">
                <asp:TextBox ID="TextBoxdatedenaissance" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-lg" style="height: 27px; background-color: #FFFFFF; " colspan="2">mail</td>
            <td style="height: 27px" colspan="2">
                <asp:TextBox ID="TextBoxmail" runat="server" TextMode="Email" Height="22px"></asp:TextBox>                
            </td>
            <td style="height: 27px">
                </td>
            <td style="height: 27px">
                </td>
            <td style="height: 27px">
                </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 26px">
                <asp:Button ID="btnVider" runat="server" OnClick="Button1_Click" Text="Vider les champs" />
            </td>
            <td style="height: 26px">
                <asp:Button ID="BtAjouter" runat="server" OnClick="BtAjouter_Click" Text="Ajouter/Modifier" Width="124px" />
               
                <asp:Button ID="Button1" runat="server" OnClick="Buttondelete" Text="Supprimer" />
               
            </td>
            <td style="height: 26px">
                &nbsp;</td>
            <td style="height: 26px">&nbsp;</td>
            <td style="height: 26px">&nbsp;</td>
            <td style="height: 26px">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="height: 20px"></td>
            <td style="height: 20px" colspan="2"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="code" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="code" HeaderText="code" ReadOnly="True" SortExpression="code" />
                        <asp:BoundField DataField="nom" HeaderText="nom" SortExpression="nom" />
                        <asp:BoundField DataField="prenoms" HeaderText="prenoms" SortExpression="prenoms" />
                        <asp:BoundField DataField="codepostal" HeaderText="codepostal" SortExpression="codepostal" />
                        <asp:BoundField DataField="commune" HeaderText="commune" SortExpression="commune" />
                        <asp:BoundField DataField="adresse" HeaderText="adresse" SortExpression="adresse" />
                        <asp:BoundField DataField="datenaissance" HeaderText="datenaissance" SortExpression="datenaissance" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Projet_GoupeConnectionString %>" DeleteCommand="DELETE FROM [Ficheclients] WHERE [code] = @code" InsertCommand="INSERT INTO [Ficheclients] ([code], [nom], [prenoms], [codepostal], [commune], [adresse], [datenaissance]) VALUES (@code, @nom, @prenoms, @codepostal, @commune, @adresse, @datenaissance)" SelectCommand="SELECT [code], [nom], [prenoms], [codepostal], [commune], [adresse], [datenaissance] FROM [Ficheclients]" UpdateCommand="UPDATE [Ficheclients] SET [nom] = @nom, [prenoms] = @prenoms, [codepostal] = @codepostal, [commune] = @commune, [adresse] = @adresse, [datenaissance] = @datenaissance WHERE [code] = @code">
                    <DeleteParameters>
                        <asp:Parameter Name="code" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="code" Type="String" />
                        <asp:Parameter Name="nom" Type="String" />
                        <asp:Parameter Name="prenoms" Type="String" />
                        <asp:Parameter Name="codepostal" Type="String" />
                        <asp:Parameter Name="commune" Type="String" />
                        <asp:Parameter Name="adresse" Type="String" />
                        <asp:Parameter DbType="Date" Name="datenaissance" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="nom" Type="String" />
                        <asp:Parameter Name="prenoms" Type="String" />
                        <asp:Parameter Name="codepostal" Type="String" />
                        <asp:Parameter Name="commune" Type="String" />
                        <asp:Parameter Name="adresse" Type="String" />
                        <asp:Parameter DbType="Date" Name="datenaissance" />
                        <asp:Parameter Name="code" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 407px">&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
