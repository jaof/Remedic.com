using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Rmedic.com.ControlPanel.Registros
{
    public partial class rMedicamentos : System.Web.UI.Page
    {
        Medicamentos med = new Medicamentos();
        int IdMedicamento;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                //int.TryParse(Request.QueryString["IdSistemaFisio"], out IdMedicamento);

                //if (med.Buscar(IdMedicamento))
                //{


                //    TbIdSistema.Text = (IdSistema).ToString();
                //    TbSistema.Text = sis.Sistema;

                    btnGuardar.Text = "Actualizar";
                    btnEliminar.Visible = true;

                }
            }

        

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if (TbIdMedicamento.Text == string.Empty)
            {




                med.Nombre = TbNombre.Text;


                    if (med.Insertar())
                    {
                        Response.Write("Guardo Exitosamente");

                    }
                    else
                    {
                        Response.Write("No se Pudo Guardar");
                    }
                }
            
            else
            {

                med.Nombre= TbNombre.Text;

                if (med.Modificar(TbIdMedicamento.Text))
                {
                    Response.Write("Modifico Exitosamente");


                }
                else
                {
                    Response.Write("No se Pudo Pudo Modificar");
                }
            }

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            //if (TbIdSistema.Text != string.Empty)
            //{
            //    if (sis.Eliminar(TbIdSistema.Text))
            //    {
            //        Response.Write("Se Elimino Correctamte");
            //    }
            //    else
            //    {
            //        Response.Write("No se Pudo Pudo Eliminar");
            //    }
            //}
        }

        protected void btnConsulta_Click(object sender, EventArgs e)
        {

        }
    }
}