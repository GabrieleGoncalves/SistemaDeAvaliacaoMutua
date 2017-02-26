using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_Participante : System.Web.UI.Page
{
    void Page_PreInit(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["PERFIL"] != null)
            {
                if (Session["PERFIL"].ToString() == "participante")
                    MasterPageFile = "~/paginas/MasterPageParticipante.master";
                else
                    Response.Redirect("Login.aspx");
            }
            else
                Response.Redirect("Login.aspx");
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}