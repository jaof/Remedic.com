<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="rRecetas.aspx.cs" Inherits="Rmedic.com.ControlPanel.Registros.rRecetas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../Scripts/toastr.min.js"></script>
    <style type="text/css">
        .auto-style4 {
            width: 71px;
            text-align:left;
            height: 41px;
        }
        .auto-style5 {
            height: 42px;
        }
        .auto-style6 {
            height: 42px;
            width: 250px;
        }
        .auto-style7 {
            height: 42px;
            width: 73px;
        }
        .auto-style8 {
            height: 41px;
            width: 73px;
        }
        .auto-style9 {
            height: 18px;
            margin-top: 18;
        }
        .auto-style10 {
            margin-top: 17;
        }
        .auto-style11 {
            height: 44px;
            width: 348px;
        }
        .auto-style12 {
            width: 250px;
        }
        .auto-style13 {
            height: 42px;
            left: 0px;
            top: -1px;
            width: 250px;
        }
        .auto-style14 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p></p>
    <table class="auto-style11">
        <tr>
            <td>
                IIdMedicamento<td class="auto-style12">

            <asp:TextBox ID="TextBoxIdRevision" class="form-control" runat="server" Height="28px" Width="219px"></asp:TextBox>

            
                </td>
            </td>
            <td>

                &nbsp;</td>
        </tr>


        <td class="auto-style7">

            
     
            <asp:Label ID="Label1" runat="server" Text="Fecha"></asp:Label>
            
            
        </td>
        <td class="auto-style6">

            <asp:TextBox ID="TbFecha" class="form-control" runat="server" TextMode="Date" Height="28px" Width="219px"></asp:TextBox>

            
        </td>
        <td>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TbFecha" CssClass="auto-style14" ErrorMessage="La Fecha No Puede Estar Vacia ">*</asp:RequiredFieldValidator>
        <tr>
            <td class="auto-style8">
                Paciente</td>
            <td class="auto-style13">

                <asp:DropDownList ID="DdlPaciente" runat="server" class="form-control" Height="28px">
                </asp:DropDownList>

            
            </td>
        </tr>
        <tr>
            <td>

                IIdRecetaDetalle</td>
            <td class="auto-style12">

                <asp:DropDownList ID="DdlRecetaDetalle" runat="server" class="form-control" Height="28px">
                </asp:DropDownList>

            
            </td>
        </tr>
    </table>
    <p class="auto-style9">
        &nbsp;&nbsp;&nbsp;
        Medicamento&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <table class="auto-style10">
        <td class="auto-style5">
  
                <asp:DropDownList ID="DdlMedicamento" class="form-control" runat="server" Height="28px" Width="219px">
        </asp:DropDownList>
            
       </td><td class="auto-style5">
            &nbsp;</td>
        <td class="auto-style4">
          <asp:Button ID="BtnADD" class="btn btn-primary" runat="server" Text="Agregar"  Height="28px" OnClick="BtnADD_Click" />
        </td>
        </table>
    <asp:GridView ID="GvDetalle" runat="server" Width="1154px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
      <h1>

          <asp:Button ID="BtnLimpiar" class="btn btn-primary" runat="server" Text="Limpiar" OnClick="BtnGuardar_Click" />

          <asp:Button ID="BtnGuardar" class="btn btn-primary" runat="server" Text="Guarar" OnClick="BtnGuardar_Click" />

          <asp:Button ID="BtnEliminar" class="btn btn-primary" runat="server" Text="Eliminar" OnClick="BtnGuardar_Click" />
      </h1>
</asp:Content>
