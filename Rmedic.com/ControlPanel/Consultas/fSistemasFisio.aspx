<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="fSistemasFisio.aspx.cs" Inherits="AplicadaII_Rmedic.Privado.Consultas.fSistemasFisio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link rel="stylesheet" href="Bootstrap\css\bootstrap.css">
    <p></p>
    <table>
        
          <td class="auto-style17">

                Nombre

            </td>
            <td class="auto-style19" colspan="3">

                <asp:TextBox ID="TextBoxFiltro" class="form-control" runat="server" Width="286px" Height="27px"></asp:TextBox>

            </td>
            <td class="auto-style18">

                <asp:Button ID="btnBuscar"  class="btn btn-primary" runat="server" Text="Buscar" OnClick="BtnBuscar_Click" Height="28px" />

            </td>


            
    </table>
     
    <div>
    <asp:GridView ID="GridViewVista" runat="server" Width="816px" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="auto-style7" Height="77px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="IdSistemaFisio" DataNavigateUrlFormatString="~/ControlPanel/Registros/rSistemaFisiologico.aspx?IdSistemaFisio={0}" Text="Editar" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
        </div>
</asp:Content>
