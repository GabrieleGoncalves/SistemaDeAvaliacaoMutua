using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class paginas_CriarEquipes : System.Web.UI.Page
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
    protected void lkbPesquisar_Click(object sender, EventArgs e)
    {
        switch (ddlPesquisarPor.SelectedIndex)
        {
            case 1:
                CarregarPesquisaRA();
                //ClientScript.RegisterClientScriptBlock(this.GetType(), "modal", "$('#modalEquipe').modal('show');");
                lblScript.Text = "<script> $(document).ready(function(){ $('#modalEquipe').modal('show');}) </script>";
                break;
            case 2:
                CarregarPesquisa();
                lblScript.Text = "<script> $(document).ready(function(){ $('#modalEquipe').modal('show');}) </script>";
                break;
            case 3:
                PesquisarNome();               
                lblScript.Text = "<script> $(document).ready(function(){ $('#modalEquipe').modal('show');}) </script>";
                break;
            default:
                break;
        }
    }

         public void CarregarPesquisa()
    {
        String email = txtPesquisar.Text;
        DataSet ds = new DataSet();
        ds = Pes_PessoaDB.SelectEmail(email);
        int qtd = ds.Tables[0].Rows.Count;
        if (qtd > 0)
        {
            lkbAddPes.Visible = true;
        }
        else
        {
            lkbAddPes.Visible = false;
        }
        gdvPesquisarEquipe.DataSource = ds.Tables[0].DefaultView;
        gdvPesquisarEquipe.DataBind();
        gdvPesquisarEquipe.Visible = true;
    }

    public void CarregarPesquisaRA()
    {
        String ra = txtPesquisar.Text;
        DataSet ds = new DataSet();
        ds = Pes_PessoaDB.SelectRa(ra);
        int qtd = ds.Tables[0].Rows.Count;
        if (qtd > 0)
        {
            lkbAddPes.Visible = true;
        }
        else
        {
            lkbAddPes.Visible = false;
        }
        gdvPesquisarEquipe.DataSource = ds.Tables[0].DefaultView;
        gdvPesquisarEquipe.DataBind();
        gdvPesquisarEquipe.Visible = true;
    }
    public void PesquisarNome()
    {
        String nome = txtPesquisar.Text;
        DataSet ds = new DataSet();
        ds = Pes_PessoaDB.SelectNome(nome);
        int qtd = ds.Tables[0].Rows.Count;
        if (qtd > 0)
        {
            lkbAddPes.Visible = true;
        }
        else
        {
            lkbAddPes.Visible = false;
        }
        gdvPesquisarEquipe.DataSource = ds.Tables[0].DefaultView;
        gdvPesquisarEquipe.DataBind();
        gdvPesquisarEquipe.Visible = true;
    }
    protected void ltbParticipantesEquipe_SelectedIndexChanged(object sender, EventArgs e)
    {
    ltbParticipantesEquipe.Items.Remove(ltbParticipantesEquipe.SelectedItem);
    lblScript.Text = "<script> $(document).ready(function(){ $('#modalEquipe').modal('show');}) </script>";
    }
    protected void lkbAddPes_Click(object sender, EventArgs e)
    {
        lblScript.Text = "<script> $(document).ready(function(){ $('#modalEquipe').modal('show');}) </script>";
        for (int i = 0; i <= gdvPesquisarEquipe.Rows.Count - 1; i++)
        {
            GridViewRow dgItem = gdvPesquisarEquipe.Rows[i];
            CheckBox cb = (CheckBox)dgItem.FindControl("CheckBox1");

            if (cb.Checked)
            {
                int t = 0;
                String oi = (gdvPesquisarEquipe.Rows[i].Cells[2].Text);
                for (int x = 0; x < ltbParticipantesEquipe.Items.Count; x++)
                {
                    if (oi.Equals(ltbParticipantesEquipe.Items[x].Text))
                    {
                        t++;
                    }
                }
                String io = (gdvPesquisarEquipe.Rows[i].Cells[0].Text);
                if (t == 0)
                {
                    ltbParticipantesEquipe.Items.Add(new ListItem(oi, io));
                }
                else
                {
                    Response.Write("<script>alert ('Usuario ja adicionado!');</script>");
                }
            }
        }
    }
    protected void lkbCriarAvaliacao_Click(object sender, EventArgs e)
    {
        Eqp_Equipe equipe = new Eqp_Equipe();
        equipe.Eqp_nome = txtNomeEquipe.Text;
        equipe.Eqp_descricao = txtNomeEquipe.Text;

        equipe.Eqp_codigo = Eqp_EquipeDB.Insert(equipe);

        if (equipe.Eqp_codigo > 0)
        {
            for (int i = 0; i < ltbParticipantesEquipe.Items.Count; i++)
            {
                Equ_Equipe_Usuario equ = new Equ_Equipe_Usuario();
                equ.Eqp_codigo = equipe;
                Usu_Usuario usu = new Usu_Usuario();
                usu.Usu_codigo = Convert.ToInt32(ltbParticipantesEquipe.Items[i].Value);
                equ.Usu_codigo = usu;
                switch (Equ_Equipe_UsuarioDB.Insert(equ))
                {
                    case 0:
                        lblScript.Text = "<script> alert('Cadastrado Com sucesso!');</script>";
                        //Response.Redirect("Avaliador.aspx");
                        break;
                    case -2:
                        lblScript.Text = "<script> alert('Erro!');</script>";
                        break;
                }

            }

        }
        else
        {
            lblScript.Text = "<script> alert('Cadastro não efetuado!!!');</script>";
        }
    }

   /* protected void selectAll_Click(object sender, EventArgs e)
    {
        CheckBox chkTemp;
        foreach (GridViewRow gvLinha in gdvPesquisarEquipe.Rows)
        {
            //Neste exemplo checkbox esta na primeira coluna;
            chkTemp = (CheckBox)gvLinha.Cells[0].Controls[0];
            chkTemp.Checked = true;
        }
    }*/
}
