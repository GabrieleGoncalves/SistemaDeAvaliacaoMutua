using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class paginas_GridResponderAvaliacaoParticipante : System.Web.UI.Page
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
                    Response.Redirect("EscolherPerfil.aspx");
            }
            else
                Response.Redirect("EscolherPerfil.aspx");
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            carregagrid();
        }
    }

    public void carregagrid()
    {

        Usu_Usuario usuario = (Usu_Usuario)Session["usuario"];
        DataSet ava = Ava_AvaliacaoDB.SelectAvaliacaoAtiva(usuario.Usu_codigo);
        int qtd = ava.Tables[0].Rows.Count;
        if (qtd > 0)
        {
            gdvResponderAvaliacao.DataSource = ava.Tables[0].DefaultView;
            gdvResponderAvaliacao.DataBind();
        }

    }
}