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

        int IdRevicionPaciente;
        int paciente = 0;
        int sistema = 0;
        int revisioPaciente = 0;
        protected void Page_Load(object sender, EventArgs e)
        {


            //int.TryParse(DdlPaciente.SelectedValue, out paciente);
            //int.TryParse(DdlSistema.SelectedValue, out sistema);
            //if(rec.BuscarIdRevision()){
            //    revisioPaciente = rec.IdRevision;
            //}

            //if (!IsPostBack)
            //{

            //    int.TryParse(Request.QueryString["IdRevisionPaciente"], out IdRevicionPaciente);

            //    if(rec.Buscar(IdRevicionPaciente.ToString())){
            //        TextBoxIdRevision.Text = rec.IdRevision.ToString();
            //        DdlPaciente.SelectedValue = rec.IdPaciente.ToString();
            //        TbFecha.Text = rec.Fecha.ToString("MM/dd/yyyy");

            //    }
                DdlPaciente.DataSource = Pacientes.Lista("Nombre,IdPaciente", "Pacientes");
                DdlPaciente.DataValueField = "IdPaciente";
                DdlPaciente.DataTextField = "Nombre";
                DdlPaciente.DataBind();

                DdlMedicamento.DataSource = Medicamentos.Lista("IdMedicamento,Nombre", "Medicamentos");
                DdlMedicamento.DataValueField = "IdMedicamento";
                DdlMedicamento.DataTextField = "Nombre";
                DdlMedicamento.DataBind();
                


            //}

        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
           
           
            if (TextBoxIdRevision.Text == string.Empty)
                  {

                RevisionPacientes RevP = new RevisionPacientes();

                
                if (Session["Paciente"] != null)
                {
                    RevP = (RevisionPacientes)Session["Paciente"];
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
            RevisionPacientes RevP = new RevisionPacientes();

            if (Session["Paciente"] != null)
            {
                RevP = (RevisionPacientes)Session["Paciente"];
            }

            RevP.AgregarDetalle(revisioPaciente, sistema, TbEstado.Text);

            GvDetalle.DataSource = RevP.Detalle;
            GvDetalle.DataBind();

            Session["Paciente"] = RevP;
           
           


        }

    }
    }
}