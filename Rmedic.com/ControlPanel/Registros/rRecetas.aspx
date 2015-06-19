<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="rRecetas.aspx.cs" Inherits="Rmedic.com.ControlPanel.Registros.rRecetas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../Scripts/toastr.min.js"></script>
    <style type="text/css">
        .auto-style5 {
            height: 42px;
        }
        .auto-style8 {
            height: 41px;
            width: 105px;
        }
        .auto-style10 {
            margin-top: 17px;
            margin-left:20px;
        }
        .auto-style11 {
            height: 44px;
            width: 428px;
            margin-left:20px;

        }
        .auto-style13 {
            height: 42px;
            left: 0px;
            top: -1px;
            width: 225px;
        }
        .auto-style14 {
            color: #FF0000;
        }
        .auto-style16 {
            height: 18px;
            margin-top: 18;
            width: 220px;
        }
        .auto-style25 {
            height: 41px;
            left: 0px;
            top: -1px;
            width: 220px;
        }
        .auto-style26 {
            width: 220px;
        }
        .auto-style28 {
            height: 42px;
            width: 107px;
        }
        .auto-style29 {
            width: 107px;
        }
        .auto-style30 {
            height: 41px;
        }
        .auto-style31 {
            width: 107px;
            height: 41px;
        }
        .auto-style33 {
            width: 220px;
            height: 41px;
        }
        .auto-style34 {
            height: 39px;
            margin-left:110px;

        }
        .auto-style35 {
            width: 225px;
            height: 41px;
        }
        .auto-style36 {
            width: 7px;
        }
        .auto-style37 {
            height: 41px;
            width: 7px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p></p>
    <table class="auto-style11">
        <tr>
            <td class="auto-style8">
                IdReceta<td class="auto-style35">

            <asp:TextBox ID="TextBoxIdRecetas" class="form-control" runat="server" Height="28px" Width="219px"></asp:TextBox>

            
                </td>
            </td>
            <td class="auto-style30">

              <strong>
             
          <asp:Button ID="BtnConsultaRecetas" class="btn btn-primary"  runat="server" Text="Consulta"  Height="28px" CausesValidation="False" />

              </strong>
            </td>
        </tr>


        <td class="auto-style8">

            
     
            <asp:Label ID="Label1" runat="server" Text="Fecha"></asp:Label>
            
            
        </td>
        <td class="auto-style35">

            <asp:TextBox ID="TbFecha" class="form-control" runat="server" TextMode="Date" Height="28px" Width="219px"></asp:TextBox>

            
        </td>
        <td class="auto-style30">

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TbFecha" CssClass="auto-style14" ErrorMessage="La Fecha No Puede Estar Vacia ">*</asp:RequiredFieldValidator>
        <tr>
            <td class="auto-style8">
                Paciente</td>
            <td class="auto-style13">

                <asp:DropDownList ID="DdlPaciente" runat="server" class="form-control" Height="28px" Width="219px">
                </asp:DropDownList>

            
            </td>
        </tr>
        </table>
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Receta Detalles</h1>
    <table class="auto-style10">
        <tr>
      <td class="auto-style28">
          Medicamento<td class="auto-style16">

                <asp:DropDownList ID="DdlMedicamento" runat="server" class="form-control" Height="28px" Width="219px">
                </asp:DropDownList>

            
          </td>
          <td class="auto-style36">
              &nbsp;</td>
         
           
         
      </td>
          </tr>
        <tr>
            <td class="auto-style31">

                Frecuencia</td>
                &nbsp;</td><td class="auto-style25">

            <asp:TextBox ID="TextBoxFrecuencia" class="form-control" runat="server" Height="28px" Width="219px"></asp:TextBox>

            
            </td>
            <td class="auto-style37">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Frecuencia No Puede Estar Vacio" ControlToValidate="TextBoxFrecuencia" CssClass="auto-style14">*</asp:RequiredFieldValidator>
           </td>
            <tr>
                <td class="auto-style31">

                    Cantidad</td>
                <td class="auto-style33">

            <asp:TextBox ID="TextBoxCantidad" class="form-control" runat="server" Height="28px" Width="219px"></asp:TextBox>

            
                    <td class="auto-style37">

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxCantidad" CssClass="auto-style14" ErrorMessage="Cantidad No Puede Estar Vacio">*</asp:RequiredFieldValidator>

                    </td>
                    <td class="auto-style30">

          <asp:Button ID="BtnADD" class="btn btn-primary"  runat="server" Text="Agregar"  Height="28px" OnClick="BtnADD_Click" />

                    </td>

                

                </td>
            </tr>
            </tr>
        <tr>
            <td class="auto-style29">

            </td>
            <td class="auto-style26">

                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style14" Width="219px" />

            </td>
        </tr>
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
      <h1 class="auto-style34">

          <asp:Button ID="BtnLimpiar" class="btn btn-primary" runat="server" Text="Limpiar" OnClick="BtnGuardar_Click" />

          <asp:Button ID="BtnGuardar" class="btn btn-primary" runat="server" Text="Guarar" OnClick="BtnGuardar_Click" />

          <asp:Button ID="BtnEliminar" class="btn btn-primary" runat="server" Text="Eliminar" OnClick="BtnGuardar_Click" />
      </h1>
</asp:Content>
