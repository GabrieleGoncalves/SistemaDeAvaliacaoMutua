using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class paginas_GridResponderAvaliacao : System.Web.UI.Page
{
    void Page_PreInit(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["PERFIL"] != null)
            {
                if (Session["PERFIL"].ToString() == "avaliador")
                    MasterPageFile = "~/paginas/MasterPageAvaliador.master";
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
        string ano = DateTime.Now.Year.ToString();
        string dia = DateTime.Now.Day.ToString();
        string mes = DateTime.Now.Month.ToString();
        string apos = "'";
        Usu_Usuario usuario = (Usu_Usuario)Session["usuario"];
        DataSet ava = Ava_AvaliacaoDB.SelectAvaliacaoAtivaAvaliador(usuario.Usu_codigo);
        int qtd = ava.Tables[0].Rows.Count;
        if (qtd > 0)
        {
            gdvResponderAvaliacao.DataSource = ava.Tables[0].DefaultView;
            gdvResponderAvaliacao.DataBind();
        }

    }
}