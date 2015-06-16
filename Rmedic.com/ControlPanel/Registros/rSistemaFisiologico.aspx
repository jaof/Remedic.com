<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="rSistemaFisiologico.aspx.cs" Inherits="RegistroMedic.rSistemaFisiologico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 84px;
        }
        .auto-style7 {
            width: 569px;
        }
        .auto-style8 {
            color: #FF0000;
        }
        .auto-style9 {
            width: 317px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="Bootstrap\css\bootstrap.css">
  <p></p>
    <table class="auto-style7">
      <td class="auto-style6">
          <asp:Label ID="Label1" runat="server" Text="IdSistema"></asp:Label>
          <td class="auto-style9">
              <asp:TextBox ID="TbIdSistema" class="form-control" runat="server" Width="290px"></asp:TextBox>
          </td>
          <td>
       <asp:Button ID="btnConsulta" class="btn btn-primary" runat="server" Text="Consulta" CausesValidation="False" OnClick="btnConsulta_Click" PostBackUrl="~/ControlPanel/Consultas/fSistemasFisio.aspx" />
        </td>
      </td>
      <tr>
      <td class="auto-style6">
          <asp:Label ID="Label2" runat="server" Text="Sistema"></asp:Label>
          <td class="auto-style9">
              <asp:TextBox ID="TbSistema" class="form-control"  runat="server"></asp:TextBox>
          </td>
          <td>
              <strong>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Sistema no Puede Estar Vacio" ControlToValidate="TbSistema" CssClass="auto-style8">*</asp:RequiredFieldValidator>
              </strong>
          </td>
      </td>
          </tr>
        <tr>
            <td>

                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style8" />
            </td>

        </tr>
  </table>
           

        <asp:Button ID="btnLimpiar" class="btn btn-primary" runat="server" Text="Limpiar"  />
       <asp:Button ID="btnGuardar" class="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
        <asp:Button ID="btnEliminar" class="btn btn-primary" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" Visible="False" />
       

     
     

</asp:Content>
