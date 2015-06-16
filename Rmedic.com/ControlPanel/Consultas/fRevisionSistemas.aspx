<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="fRevisionSistemas.aspx.cs" Inherits="AplicadaII_Rmedic.Privado.Consultas.fRevisionSistemas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link href="../../Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../Bootstrap/css/Margenes.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style7 {
            margin-left: 159;
            margin-top: 144;
        }
        .auto-style10 {
            width: 357px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
            <asp:HyperLinkField DataNavigateUrlFields="IdRevisionPaciente" DataNavigateUrlFormatString="~/ControlPanel/Registros/rRevisionXSistemas.aspx?IdRevisionPaciente={0}" Text="Editar" />
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
