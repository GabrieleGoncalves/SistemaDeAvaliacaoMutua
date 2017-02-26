using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class paginas_GridRelatorioGeral : System.Web.UI.Page
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
            CarregaGrid();
        }
    }

    public void CarregaGrid()
    {

        Usu_Usuario usuario = (Usu_Usuario)Session["usuario"];
        DataSet ava = Ava_AvaliacaoDB.SelectAvaliacaoInativa(usuario.Usu_codigo);
        //DataSet ava = Ava_AvaliacaoDB.SelectAvaliacao("Relatorio de Avaliação"); //ERRO
        int qtd = Convert.ToInt32(ava.Tables[0].Rows.Count);
        if (qtd > 0)
        {
            gdvRelatorioGeral.DataSource = ava.Tables[0].DefaultView;
            gdvRelatorioGeral.DataBind();
            gdvRelatorioGeral.Visible = true;
        }
        else
        {
            gdvRelatorioGeral.Visible = false;
        }
    }

    protected void gdvRelatorioGeral_SelectedIndexChanged(object sender, GridViewPageEventArgs e)
    {
        gdvRelatorioGeral.PageIndex = e.NewPageIndex;
        CarregaGrid();
    }
    //protected void GrvVisitantes_SelectedIndexChanged(object sender, EventArgs e)
    //{

    //}

}
