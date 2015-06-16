<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="rMedicamentos.aspx.cs" Inherits="Rmedic.com.ControlPanel.Registros.rMedicamentos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 22px;
        }
        .auto-style7 {
            height: 23px;
        }
        .auto-style8 {
            height: 24px;
        }
        .auto-style9 {
            height: 25px;
        }
        .auto-style10 {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link rel="stylesheet" href="Bootstrap\css\bootstrap.css">
  <p></p>
    <table class="auto-style7">
      <td class="auto-style6">
          <asp:Label ID="Label1" runat="server" Text="IdMedicamento"></asp:Label>
          <td class="auto-style9">
              <asp:TextBox ID="TbIdMedicamento" class="form-control" runat="server" Width="290px"></asp:TextBox>
          </td>
          <td>
       <asp:Button ID="btnConsulta" class="btn btn-primary" runat="server" Text="Consulta" CausesValidation="False" OnClick="btnConsulta_Click" PostBackUrl="~/ControlPanel/Consultas/fSistemasFisio.aspx" />
        </td>
      </td>
      <tr>
      <td class="auto-style6">
          <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
          <td class="auto-style9">
              <asp:TextBox ID="TbNombre" class="form-control"  runat="server"></asp:TextBox>
          </td>
          <td>
              <strong>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Sistema no Puede Estar Vacio" ControlToValidate="TbNombre" CssClass="auto-style8">*</asp:RequiredFieldValidator>
              </strong>
          </td>
         
              <asp:TextBox ID="TbNombre0" class="form-control"  runat="server"></asp:TextBox>
         
      </td>
          </tr>
        <tr>
            <td class="auto-style10">

                Descripcion

            </td>
            <td>
              <asp:TextBox ID="TbDescripcion" class="form-control"  runat="server"></asp:TextBox>
            </td>

        </tr>
        <tr><td>

            </td>
            <td>

                <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="46px" />

            </td>
            
        </tr>
  </table>
           

        <asp:Button ID="btnLimpiar" class="btn btn-primary" runat="server" Text="Limpiar"  />
       <asp:Button ID="btnGuardar" class="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
        <asp:Button ID="btnEliminar" class="btn btn-primary" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" Visible="False" />
       

     
</asp:Content>
