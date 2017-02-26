using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_CadastrarUsuárioAdmComum : System.Web.UI.Page
{
   void Page_PreInit(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["PERFIL"] != null)
            {
                if (Session["PERFIL"].ToString() == "administradorComum")
                    MasterPageFile = "~/paginas/MasterPageAdministradorComum.master";
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
    protected void btnCadastrarAdm_Click(object sender, EventArgs e)
    {

        Pes_Pessoas pessoa = new Pes_Pessoas();

        pessoa.Pes_Nome = txtNome.Text;
        pessoa.Pes_Rg = txtRG.Text;
        pessoa.Pes_Ra = txtMatricula.Text;
        pessoa.Pes_Cpf = txtCPF.Text;
        pessoa.Pes_Telefone = txtTelefone.Text;
        pessoa.Pes_Celular = txtCelular.Text;
        pessoa.Pes_Email = txtEmail.Text;
        pessoa.Pes_Data = Convert.ToDateTime(txtDataDeNascimento.Text);
        pessoa.Pes_Cep = txtCEP.Text;
        pessoa.Pes_Rua = txtRua.Text;
        pessoa.Pes_Numero = txtNumero.Text;
        pessoa.Pes_Bairro = txtBairro.Text;
        pessoa.Pes_Cidade = txtCidade.Text;
        pessoa.Pes_Estado = ddlEstado.Text;
        pessoa.Pes_Codigo = Pes_PessoaDB.Insert(pessoa);
       
        if (Pes_PessoaDB.Insert(pessoa) == -2)
        {
            Response.Write(@"<script language='javascript'>alert('Cadastro não efetuado!');</script>");
        }
        else
        {
            Usu_Usuario usuario = new Usu_Usuario();

            usuario.Usu_login = Convert.ToInt32(txtMatricula.Text);
            usuario.Usu_senha = Convert.ToDateTime(txtDataDeNascimento.Text).ToShortDateString();
            usuario.Usu_data_cadastro = DateTime.Now.Date;
            usuario.Usu_status = 1;
            usuario.Pes_codigo = pessoa;
            usuario.Usu_codigo = Usu_UsuarioDB.Insert(usuario);
            if (usuario.Usu_codigo == -2)
                Response.Write(@"<script language='javascript'>alert('Cadastro não efetuado!');</script>");
            else
            {


                if (ddlSelecionarPerfil.SelectedValue == "Participante")
                {
                    Pru_Perfil_Usuario pru = new Pru_Perfil_Usuario();

                    Per_Perfil perfil = new Per_Perfil();
                    perfil.Per_codigo = 1;

                    pru.Per_codigo = perfil;
                    pru.Usu_codigo = usuario;

                    switch (Pru_Perfil_UsuarioDB.Insert(pru))
                    {
                        case 0:
                            Response.Write(@"<script language='javascript'>alert('Cadastro efetuado com sucesso!');</script>");
                            break;
                        case -2:
                            Response.Write(@"<script language='javascript'>alert('Cadastro não efetuado!');</script>");
                            break;
                    }
                }
                else
                    if (ddlSelecionarPerfil.SelectedValue == "Avaliador")
                    {

                        Pru_Perfil_Usuario pru = new Pru_Perfil_Usuario();

                        Per_Perfil perfil = new Per_Perfil();
                        pru.Usu_codigo = usuario;
                        
                        perfil.Per_codigo = 1;
                        pru.Per_codigo = perfil;

                        Pru_Perfil_UsuarioDB.Insert(pru);
                        perfil.Per_codigo = 2;
                        pru.Per_codigo = perfil;


                        

                        switch (Pru_Perfil_UsuarioDB.Insert(pru))
                        {
                            case 0:
                                Response.Write(@"<script language='javascript'>alert('Cadastro efetuado com sucesso!');</script>");
                                break;
                            case -2:
                                Response.Write(@"<script language='javascript'>alert('Cadastro não efetuado!');</script>");
                                break;
                        }
                        //pru.Per_codigo.Per_codigo = '1';
                        //pru.Per_codigo.Per_codigo = '2';
                    }
                    

                Sam.Funcoes.Funcoes.limparCamposTextBox(this);

            }
        }
    }
}