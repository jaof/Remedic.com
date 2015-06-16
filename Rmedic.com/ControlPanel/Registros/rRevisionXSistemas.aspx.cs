using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;

namespace RegistroMedic
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        RevisionPacientes rev = new RevisionPacientes();
        DataTable detalle = new DataTable();

        int IdRevicionPaciente;
        int paciente = 0;
        int sistema = 0;
        int revisioPaciente = 0;
        protected void Page_Load(object sender, EventArgs e)
        {


            int.TryParse(DdlPaciente.SelectedValue, out paciente);
            int.TryParse(DdlSistema.SelectedValue, out sistema);
            if(rev.BuscarIdRevision()){
                revisioPaciente = rev.IdRevision;
            }

            if (!IsPostBack)
            {

                int.TryParse(Request.QueryString["IdRevisionPaciente"], out IdRevicionPaciente);

                if(rev.Buscar(IdRevicionPaciente.ToString())){
                    TextBoxIdRevision.Text = rev.IdRevision.ToString();
                    DdlPaciente.SelectedValue = rev.IdPaciente.ToString();
                    TbFecha.Text = rev.Fecha.ToString("MM/dd/yyyy");

                }
                DdlPaciente.DataSource = Pacientes.Lista("Nombre,IdPaciente", "Pacientes");
                DdlPaciente.DataValueField = "IdPaciente";
                DdlPaciente.DataTextField = "Nombre";
                DdlPaciente.DataBind();

                DdlSistema.DataSource = Sistemas.Lista("Sistema,IdSistemaFisio", "SistemasFisio");
                DdlSistema.DataValueField = "IdSistemaFisio";
                DdlSistema.DataTextField = "Sistema";
                DdlSistema.DataBind();
                Session.Abandon();


            }

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