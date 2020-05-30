using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_CriarAvaliacao : System.Web.UI.Page
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
        carregagrid();
    }
    protected void lkbNovaAvaliacao90_Click(object sender, EventArgs e)
    {
        Response.Redirect("CriarAvaliacao90.aspx");
    }
    protected void lkbNovaAvaliacao180_Click(object sender, EventArgs e)
    {
        Response.Redirect("CriarAvaliacao180.aspx");
    }
    protected void lkbNovaAvaliacao360_Click(object sender, EventArgs e)
    {
        Response.Redirect("CriarAvaliacao360.aspx");
    }

    public void carregagrid()
    {
        DataSet ava = Ava_AvaliacaoDB.SelectAll();
        //DataSet ava = Ava_AvaliacaoDB.SelectAll();
        int qtd = ava.Tables[0].Rows.Count;
        if (qtd > 0)
        {
            gdvGerenciarAvaliacoes.DataSource = ava.Tables[0].DefaultView;
            gdvGerenciarAvaliacoes.DataBind();
        }

    }

    public void PesquisaNome()
    {
        String nome = txtPesquisa.Text;
        DataSet ds = new DataSet();
        ds = Ava_AvaliacaoDB.SelectNome(nome);
        int qtd = ds.Tables[0].Rows.Count;
        gdvGerenciarAvaliacoes.DataSource = ds.Tables[0].DefaultView;
        gdvGerenciarAvaliacoes.DataBind();
    }

    public void PesquisaDescricao()
    {
        String desc = txtPesquisa.Text;
        DataSet ds = new DataSet();
        ds = Ava_AvaliacaoDB.SelectNome(desc);
        int qtd = ds.Tables[0].Rows.Count;
        gdvGerenciarAvaliacoes.DataSource = ds.Tables[0].DefaultView;
        gdvGerenciarAvaliacoes.DataBind();
    }
    protected void lkbPesquisar_Click(object sender, EventArgs e)
    {
        switch (ddlTipoPesquisa.SelectedIndex)
        {
            case 1:
                PesquisaNome();
                break;
            case 2:
                PesquisaDescricao();
                break;
        }
    }
}