using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class paginas_CriarCriterios : System.Web.UI.Page
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

    }

    private void CarregaCriterio()
    {
        ltbCritériosCriados.Items.Clear();
        ltbCritériosCriados.Items.Clear();
        DataSet ds = Cri_CriterioDB.SelectAll();
        int qtd = ds.Tables[0].Rows.Count;

        if (qtd > 0)
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                ltbCritériosCriados.Items.Add(new ListItem(dr["cri_descricao"].ToString(), dr["cri_codigo"].ToString()));
            }
        }
    }
    protected void lkbCriarCriterio_Click(object sender, EventArgs e)
    {
        Cri_Criterio criterio = new Cri_Criterio();
        criterio.Cri_descricao = txtNomeCriterio.Text;

        switch (Cri_CriterioDB.Insert(criterio))
        {
            case 0:
                lblScript.Text = "<script> alert('Criterio cadastrado com Sucesso!');</script>";
                break;
            case -2:
                lblScript.Text = "<script> alert('Criterio nao cadastrado!');</script>";
                break;
        }

        CarregaCriterio();
        txtNomeCriterio.Text = "";
    }
}