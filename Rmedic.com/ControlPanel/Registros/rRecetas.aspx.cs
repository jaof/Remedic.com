using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;

namespace Rmedic.com.ControlPanel.Registros
{
    public partial class rRecetas : System.Web.UI.Page
    {
        Recetas rec = new Recetas();
        DataTable detalle = new DataTable();

        int IdRevicionPaciente=0;
        int paciente = 0;
        int Medicamento = 0;
        int RecetaDetalle = 0;
        protected void Page_Load(object sender, EventArgs e)
        {


            int.TryParse(DdlPaciente.SelectedValue, out paciente);
            int.TryParse(DdlMedicamento.SelectedValue, out Medicamento);


            if (rec.BuscarIdReceta())
            {
                RecetaDetalle = rec.IdReceta;
            }
            if (!IsPostBack)
            {

                int.TryParse(Request.QueryString["IdRevisionPaciente"], out IdRevicionPaciente);

                if (rec.Buscar(IdRevicionPaciente.ToString()))
                {
             
                    DdlPaciente.SelectedValue = rec.IdPaciente.ToString();
                    TbFecha.Text = rec.Fecha.ToString("MM/dd/yyyy");

                }
                DdlPaciente.DataSource = Pacientes.Lista("Nombre,IdPaciente", "Pacientes");
                DdlPaciente.DataValueField = "IdPaciente";
                DdlPaciente.DataTextField = "Nombre";
                DdlPaciente.DataBind();

                DdlMedicamento.DataSource = Medicamentos.Lista("IdMedicamento,Nombre", "Medicamentos");
                DdlMedicamento.DataValueField = "IdMedicamento";
                DdlMedicamento.DataTextField = "Nombre";
                DdlMedicamento.DataBind();

             
                


            }

        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            
           
            if (TextBoxIdRecetas.Text == string.Empty)
                  {

                Recetas RevP = new Recetas();

                
                if (Session["Recetas"] != null)
                {
                    RevP = (Recetas)Session["Recetas"];
                }
                RevP.IdPaciente = paciente;
                RevP.Fecha = Convert.ToDateTime(TbFecha.Text);

                if (RevP.Insertar())
                {
                    Response.Write("Guardo Exitosamente");

                }
                else
                {
                    Response.Write("No Se Pudo Guardar");
                }

            }
        }


        protected void BtnADD_Click(object sender, EventArgs e)
        {
            Recetas RevP = new Recetas();
            if (Session["Recetas"] != null)
            {
                RevP = (Recetas)Session["Recetas"];
            }

            RevP.AgregarDetalle(Medicamento, TextBoxFrecuencia.Text, Convert.ToInt32(TextBoxCantidad.Text), RecetaDetalle);

            GvDetalle.DataSource = RevP.recetasDetalles;
            GvDetalle.DataBind();

            Session["Recetas"] = RevP;
           
           


        }

    }
    }
