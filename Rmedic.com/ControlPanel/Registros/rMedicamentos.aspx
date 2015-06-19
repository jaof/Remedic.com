<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="rMedicamentos.aspx.cs" Inherits="Rmedic.com.ControlPanel.Registros.rMedicamentos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            height: 23px;
            margin-left:18px;
        }
        .auto-style8 {
            height: 24px;
            color: #FF0000;
        }
        .auto-style10 {
            height: 35px;
            width: 108px;
        }
        .auto-style11 {
            width: 108px;
        }
        .auto-style12 {
            color: #FF0000;
        }
        .auto-style13 {
            width: 221px
        }
        .auto-style20 {
            height: 41px;
        }
        .auto-style21 {
            height: 41px;
            width: 221px;
        }
        .auto-style22 {
            height: 41px;
            width: 108px;
        }
        .auto-style23 {
            height: 38px;
            margin-left:110px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link rel="stylesheet" href="Bootstrap\css\bootstrap.css">
  <p></p>
    <table class="auto-style7">
      <td class="auto-style22">
          <asp:Label ID="Label1" runat="server" Text="IdMedicamento"></asp:Label>
          <td class="auto-style21">
              <asp:TextBox ID="TbIdMedicamento" class="form-control" runat="server" Width="219px" Height="28px"></asp:TextBox>
          </td>
          <td class="auto-style20">
       <asp:Button ID="btnConsulta" class="btn btn-primary" runat="server" Text="Consulta" CausesValidation="False" OnClick="btnConsulta_Click" ViewStateMode="Enabled" />
        </td>
      </td>
      <tr>
      <td class="auto-style22">
          <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
          <td class="auto-style21">
              <asp:TextBox ID="TbNombre" class="form-control"  runat="server" Height="28px" Width="218px"></asp:TextBox>
          </td>
          <td class="auto-style20">
              <strong>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Sistema no Puede Estar Vacio"  CssClass="auto-style8" ControlToValidate="TbNombre">*</asp:RequiredFieldValidator>
              </strong>
          </td>
         
           
         
      </td>
          </tr>
        <tr>
            <td class="auto-style10">

                Descripcion

            </td>
            <td class="auto-style13">
              <asp:TextBox ID="TbDescripcion" class="form-control"  runat="server" Height="28px" Width="218px"></asp:TextBox>
            </td>

        </tr>
        <tr><td class="auto-style11">

            </td>
            <td class="auto-style13">

                <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="46px" CssClass="auto-style12" Width="240px" />

            </td>
            
        </tr>
  </table>
           <div class="auto-style23">

        <asp:Button ID="btnLimpiar" class="btn btn-primary" runat="server" Text="Limpiar"  />
       <asp:Button ID="btnGuardar" class="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
        <asp:Button ID="btnEliminar" class="btn btn-primary" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" Visible="False" />
       
    </div>
     
</asp:Content>
