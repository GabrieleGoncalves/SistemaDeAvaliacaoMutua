using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class paginas_CriarAvaliacao360 : System.Web.UI.Page
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
        lblScript.Text = "";
        if (!Page.IsPostBack)
        {
            CarregarCriterios();
            CarregarEquipes();
        }
    }

    private void CarregarCriterios()
    {
        ltbSelecionar.Items.Clear();
        ltbSelecionados.Items.Clear();
        DataSet ds = Cri_CriterioDB.SelectAll();
        int qtd = ds.Tables[0].Rows.Count;

        if (qtd > 0)
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                ltbSelecionar.Items.Add(new ListItem(dr["cri_descricao"].ToString(), dr["cri_codigo"].ToString()));
            }
        }
    }

    private void CarregarEquipes()
    {
        ltbSelecionarEquipe.Items.Clear();
        ltbSelecionadosEquipe.Items.Clear();
        Usu_Usuario usuario = (Usu_Usuario)Session["usuario"];
        DataSet ds = Eqp_EquipeDB.Select180(usuario.Usu_codigo);
        int qtd = ds.Tables[0].Rows.Count;

        if (qtd > 0)
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                ltbSelecionarEquipe.Items.Add(new ListItem(dr["eqp_nome"].ToString(), dr["eqp_codigo"].ToString()));
            }
        }
    }

    protected void lkbSalvarCriterio_Click(object sender, EventArgs e)
    {
        Cri_Criterio criterio = new Cri_Criterio();
        criterio.Cri_descricao = txtNovoCriterio.Text;

        switch (Cri_CriterioDB.Insert(criterio))
        {
            case 0:
                lblScript.Text="<script> alert('Criterio cadastrado com Sucesso!'); </script>";
               
                break;
            case -2:
                lblScript.Text = "<script> alert('Criterio nao cadastrado!');</script>";
                break;
        }
        ltbSelecionar.Items.Clear();
        CarregarCriterios();
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

    protected void ltbSelecionar_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ltbSelecionados.Items.Count < 10)
        {
            String oi = (ltbSelecionar.SelectedItem.Text);
            String io = (ltbSelecionar.SelectedItem.Value.ToString());
            ltbSelecionados.Items.Add(new ListItem(oi, io));
            ltbSelecionar.Items.Remove(ltbSelecionar.SelectedItem);
        }
        else
        {
            Response.Write("<script>alert('Numero Maximo de Criterios Atingido!');</script>");
        }
    }
    protected void ltbSelecionados_SelectedIndexChanged(object sender, EventArgs e)
    {
        String oi = (ltbSelecionados.SelectedItem.Text);
        String io = (ltbSelecionados.SelectedItem.Value.ToString());
        ltbSelecionar.Items.Add(new ListItem(oi, io));
        ltbSelecionados.Items.Remove(ltbSelecionados.SelectedItem);
    }
    protected void ltbSelecionarEquipe_SelectedIndexChanged(object sender, EventArgs e)
    {
        String oi = (ltbSelecionarEquipe.SelectedItem.Text);
        String io = (ltbSelecionarEquipe.SelectedItem.Value.ToString());
        ltbSelecionadosEquipe.Items.Add(new ListItem(oi, io));
        ltbSelecionarEquipe.Items.Remove(ltbSelecionarEquipe.SelectedItem);
    }
    protected void ltbSelecionadosEquipe_SelectedIndexChanged(object sender, EventArgs e)
    {
        String oi = (ltbSelecionadosEquipe.SelectedItem.Text);
        String io = (ltbSelecionadosEquipe.SelectedItem.Value.ToString());
        ltbSelecionarEquipe.Items.Add(new ListItem(oi, io));
        ltbSelecionadosEquipe.Items.Remove(ltbSelecionadosEquipe.SelectedItem);
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

    public void limparCamposPesarCriterios()
    {
        for (int i = 0; i < 10; i++)
        {
            TextBox txt = new TextBox();
            Label lblID = new Label();
            Label lbl = new Label();


            txt = (TextBox)divmodal.FindControl("txtPeso" + (i + 1).ToString());
            txt.Visible = false;
            lblID = (Label)divmodal.FindControl("lblCodCriterio" + (i + 1).ToString());
            lbl = (Label)divmodal.FindControl("lblCriterio" + (i + 1).ToString());
            lbl.Visible = false;
            lbl.Text = "";
            lblID.Text = "";
            txt.Text = "";

        }
    }


    protected void btnSalvarPesos_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Pesos Salvos Com sucesso!'); </script>");
    }

    protected void ltbParticipantesEquipe_SelectedIndexChanged(object sender, EventArgs e)
    {
        ltbParticipantesEquipe.Items.Remove(ltbParticipantesEquipe.SelectedItem);
        lblScript.Text = "<script> $(document).ready(function(){ $('#modalEquipe').modal('show');}) </script>";
    }

  
  

    protected void lkbSalvarEquipe_Click(object sender, EventArgs e)
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
                        lblScript.Text="<script> alert('Cadastrado Com sucesso!');</script>";
                        break;
                    case -2:
                        Response.Write("");
                        break;
                }

            }

        }
        else
        {
            Response.Write("Cadastro não efetuado!!!");
        }
        //ltbSelecionar.Items.Clear();
        CarregarCriterios();
        txtNovoCriterio.Text = "";
    }
    protected void lkbCriarAvaliacao_Click(object sender, EventArgs e)
    {
        Ava_Avaliacao ava = new Ava_Avaliacao();
        ava.Ava_nome = txtNomeAvaliacao.Text;
        ava.Ava_status = 1;
        if (ckbAnonimo.Checked)
        {
            ava.Ava_anonimo = 1;
        }
        else
        {
            ava.Ava_anonimo = 0;
        }
        ava.Ava_tipo = "" + 360;
        ava.Ava_Inicio = Convert.ToDateTime(txtInicio.Text);
        ava.Ava_Termino = Convert.ToDateTime(txtTermino.Text);
        ava.Ava_descricao = txtDescricaoAvaliacao.Text + " ";
        Usu_Usuario usu = (Usu_Usuario)Session["usuario"];
        ava.Usu_codigo = usu;
        ava.Ava_codigo = Ava_AvaliacaoDB.Insert(ava);

        if (ava.Ava_codigo > 0)
        {
            for (int i = 0; i < ltbSelecionados.Items.Count; i++)
            {
                Label lblID = new Label();
                TextBox txt = new TextBox();
                Cra_Criterio_Avaliacao cra = new Cra_Criterio_Avaliacao();
                cra.Ava_codigo = ava;
                Cri_Criterio cri = new Cri_Criterio();
                lblID = (Label)divmodal.FindControl("lblCodCriterio" + (i + 1).ToString());
                cri.Cri_codigo = Convert.ToInt32(lblID.Text);
                cra.Cri_Codigo = cri;
                txt = (TextBox)divmodal.FindControl("txtPeso" + (i + 1).ToString());
                cra.Cra_peso = Convert.ToDouble(txt.Text);

                Cra_Criterio_AvaliacaoDB.Insert(cra);

            }
            for (int i = 0; i < ltbSelecionadosEquipe.Items.Count; i++)
            {
                Eqa_Equipe_Avaliacao eqa = new Eqa_Equipe_Avaliacao();
                eqa.Ava_codigo = ava;
                Eqp_Equipe eqp = new Eqp_Equipe();
                eqp.Eqp_codigo = Convert.ToInt32(ltbSelecionadosEquipe.Items[i].Value.ToString());
                eqa.Eqp_codigo = eqp;

                Eqa_Equipe_AvaliacaoDB.Insert(eqa);
            }
            lblScript.Text = "<script> alert('CADASTRO DE AVALIACAO EFETUADO COM SUCESSO!');";
        }
        else
        {
            lblScript.Text = "<script> alert('CADASTRO DE AVALIACAO NAO EFETUADO COM SUCESSO!');";
        }
        
        CarregarCriterios();
        CarregarEquipes();
        txtNovoCriterio.Text = "";
        txtNomeAvaliacao.Text = "";
        Response.Redirect("CriarAvaliacao.aspx");
    }



    protected void lkbPesarCriterios_Click(object sender, EventArgs e)
    {
        limparCamposPesarCriterios();
        lblScript.Text = "<script> $(document).ready(function(){ $('#modalPesarCriterios').modal('show');}) </script>";
        for (int i = 0; i < ltbSelecionados.Items.Count; i++)
        {
            TextBox txt = new TextBox();
            Label lblID = new Label();
            Label lbl = new Label();


            txt = (TextBox)divmodal.FindControl("txtPeso" + (i + 1).ToString());
            txt.Visible = true;
            lblID = (Label)divmodal.FindControl("lblCodCriterio" + (i + 1).ToString());
            lbl = (Label)divmodal.FindControl("lblCriterio" + (i + 1).ToString());
            lbl.Visible = true;
            lbl.Text = ltbSelecionados.Items[i].Text;
            lblID.Text = ltbSelecionados.Items[i].Value;
        }
    }
}