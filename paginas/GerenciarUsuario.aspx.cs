using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Sam.Funcoes;
using System.Drawing;

public partial class paginas_GerenciarAdministradorComum : System.Web.UI.Page
{
    void Page_PreInit(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["PERFIL"] != null)
            {
                if (Session["PERFIL"].ToString() == "administradorMaster")
                    MasterPageFile = "~/paginas/MasterPageAdministradorMaster.master";
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
            CarregaDDL();

            //teste
            if (ddlSelecionarPerfil.SelectedItem.Text != "Selecione...")
            {
                CarregarGrid(Convert.ToInt32(ddlSelecionarPerfil.SelectedValue));
                GridView1.Visible = true;
                lblPesquisar.Visible = true;
                lblPesquisarPor.Visible = true;
                btnDesativar.Visible = true;
                txtPesquisar.Visible = true;
                ddlPesquisarPor.Visible = true;
                lkbPesquisar.Visible = true;

            }
            else
            {
                GridView1.Visible = false;
                lblPesquisar.Visible = false;
                lblPesquisarPor.Visible = false;
                btnDesativar.Visible = false;
                txtPesquisar.Visible = false;
                ddlPesquisarPor.Visible = false;
                lkbPesquisar.Visible = false;
            }

           
        }
    }
    protected void btn_Cadastrar(object sender, EventArgs e)
    {
        Sam.Funcoes.Funcoes.limparCamposTextBox(this);
    }
    private void CarregarGrid(int codigo)
    {

        DataSet ds = Pru_Perfil_UsuarioDB.SelectAllPerfil(codigo);
        // Sam.Funcoes.Funcoes.CarregarGridComDS(gridAdministradorComum, ds);
        Sam.Funcoes.Funcoes.CarregarGridComDS(GridView1, ds);

    }
    protected void gridEdicao_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        //definir o indice da paginação
        //carregamos o grid
        GridView1.PageIndex = e.NewPageIndex;
        //CarregarGrid();

    }
    protected void gridEdicao_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        // Label lblNovoCodigo = (Label)gridAdministradorComum.Rows[e.RowIndex].FindControl("lblCodigo");
        Pes_PessoaDB pesDB = new Pes_PessoaDB();

        //if (pesDB.Delete(Convert.ToInt32(lblNovoCodigo.Text)) == 0)
        //{
        //gridAdministradorComum.EditIndex = -1;
        //CarregarGrid();
        lblMensagem.Text = "Usuário Desativado com Sucesso!";
        /*}
        else
        {
            lblMensagem.Text = "Erro ao Desativar Usuário!";
        }*/

    }



    protected void ddlSelecionarPerfil_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlSelecionarPerfil.SelectedItem.Text != "Selecione...")
        {
            CarregarGrid(Convert.ToInt32(ddlSelecionarPerfil.SelectedValue));
            lblPesquisar.Visible = true;
            lblPesquisarPor.Visible = true;
            GridView1.Visible = true;
            btnDesativar.Visible = true;
            txtPesquisar.Visible = true;
            ddlPesquisarPor.Visible = true;
            lkbPesquisar.Visible = true;

        }
        else
        {
            GridView1.Visible = false;
            lblPesquisar.Visible = false;
            lblPesquisarPor.Visible = false;
            btnDesativar.Visible = false;
            txtPesquisar.Visible = false;
            ddlPesquisarPor.Visible = false;
            lkbPesquisar.Visible = false;
        }
    }

    public void CarregaDDL()
    {
        DataSet ds = Per_PerfilDB.SelectAll();
        ddlSelecionarPerfil.DataSource = ds.Tables[0].DefaultView;
        ddlSelecionarPerfil.DataTextField = "per_descricao";
        ddlSelecionarPerfil.DataValueField = "per_codigo";
        ddlSelecionarPerfil.DataBind();

        ddlSelecionarPerfil.Items.Insert(0, new ListItem("Selecione..."));

        txtPesquisar.Text = "";
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "editar")
        {
            int index = Convert.ToInt32(e.CommandArgument.ToString());
            Pes_Pessoas pes = Pes_PessoaDB.Select(index);
            lblCodigo.Text = pes.Pes_Codigo.ToString();
            
            txtNome1.Text = pes.Pes_Nome;
            txtRG.Text = pes.Pes_Rg;
            txtCPF.Text = pes.Pes_Cpf;
            txtEmail.Text = pes.Pes_Email;
            txtDataDeNascimento.Text = pes.Pes_Data.ToShortDateString();
            txtMatricula.Text = pes.Pes_Ra;
            txtTelefone.Text = pes.Pes_Telefone;
            txtCelular.Text = pes.Pes_Celular;
            txtCEP.Text = pes.Pes_Cep;
            txtRua.Text = pes.Pes_Rua;
            txtNumero.Text = pes.Pes_Numero;
            txtBairro.Text = pes.Pes_Bairro;
            txtCidade.Text = pes.Pes_Cidade;
            ddlEstado.Text = pes.Pes_Estado;
            txtMatricula.Enabled = false;


            Response.Write("<script>function pageLoad(){ $(\"#ModalEditar2\").modal(\"show\");} </script>");
        }
    }
    protected void lkbSalvarEditar_Click(object sender, EventArgs e)
    {
        Pes_Pessoas pessoa = new Pes_Pessoas();

        pessoa.Pes_Codigo = Convert.ToInt32(lblCodigo.Text);
        pessoa.Pes_Nome = txtNome1.Text;
        pessoa.Pes_Rg = txtRG.Text;
        pessoa.Pes_Cpf = txtCPF.Text;
        pessoa.Pes_Data = Convert.ToDateTime(txtDataDeNascimento.Text);
        pessoa.Pes_Email = txtEmail.Text;
        pessoa.Pes_Telefone = txtTelefone.Text;
        pessoa.Pes_Celular = txtCelular.Text;
        pessoa.Pes_Ra = txtMatricula.Text;
        pessoa.Pes_Cep = txtCEP.Text;
        pessoa.Pes_Cidade = txtCidade.Text;
        pessoa.Pes_Estado = ddlEstado.Text;
        pessoa.Pes_Bairro = txtBairro.Text;
        pessoa.Pes_Numero = txtNumero.Text;
        pessoa.Pes_Rua = txtRua.Text;

        switch (Pes_PessoaDB.Update(pessoa))
        {
            case 0:
                Response.Write(@"<script language='javascript'>alert('Atualizado com sucesso!');</script>");
                break;
            case -2:
                Response.Write(@"<script language='javascript'>alert('Erro ao atualizar!');</script>");
                break;
        }

    }

   

    protected void btnDesativar_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox cb = (CheckBox)row.FindControl("chkUsuario");
            if (cb != null && cb.Checked)
            {
                Usu_Usuario usuario = new Usu_Usuario();
                usuario.Usu_codigo = Convert.ToInt32(row.Cells[1].Text);
                usuario.Usu_status = 0;
                //Usu_UsuarioDB.Desativar(usuario);
                //usu_usuario usu= usu_usuarioDB(colocaaquiocodigonagrid);
                Usu_UsuarioDB.Desativar(usuario);
            }
        }
        CarregarGrid(Convert.ToInt32(ddlSelecionarPerfil.SelectedValue));
   }
    protected void lkbPesquisar_Click(object sender, EventArgs e)
    {
        switch (ddlPesquisarPor.SelectedIndex)
        {
            case 1:
                CarregarPesquisaRA();               
                break;
            case 2:
                CarregarPesquisa();                
                break;
            case 3:
                PesquisarNome();                  
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
       
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();
        GridView1.Visible = true;
    }

    public void CarregarPesquisaRA()
    {
        String ra = txtPesquisar.Text;
        DataSet ds = new DataSet();
        ds = Pes_PessoaDB.SelectRa(ra);
        int qtd = ds.Tables[0].Rows.Count;
       
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();
        GridView1.Visible = true;
    }

    public void PesquisarNome()
    {
        String nome = txtPesquisar.Text;
        DataSet ds = new DataSet();
        ds = Pes_PessoaDB.SelectNome(nome);
        int qtd = ds.Tables[0].Rows.Count;
        
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();
        GridView1.Visible = true;
    }
    protected void btnAtivar_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox cb = (CheckBox)row.FindControl("chkUsuario");
            if (cb != null && cb.Checked)
            {
                Usu_Usuario usuario = new Usu_Usuario();
                usuario.Usu_codigo = Convert.ToInt32(row.Cells[1].Text);
                usuario.Usu_status = 1;
                Usu_UsuarioDB.Desativar(usuario);
            }
        }
        CarregarGrid(Convert.ToInt32(ddlSelecionarPerfil.SelectedValue));
    }
}
