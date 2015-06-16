using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplicadaII_Rmedic
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                if (Session["Usuario"] != null)
                {
                    BtnSeccion.Text = "Cerrar Sesion";
                    Lusuario.Text = LogOn.Usu;
                }
            
        }

        protected void BtnSalir_Click(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
            {
                Response.Redirect("LogOn.aspx");
                BtnSeccion.Text = "Iniciar Sesion";
            }
        }
    }
}