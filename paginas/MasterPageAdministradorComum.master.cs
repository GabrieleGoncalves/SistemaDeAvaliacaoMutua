using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class paginas_MasterPageAdministradorComum : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usuario"] == null)
            Response.Redirect("Login.aspx");

        Usu_Usuario usuario = (Usu_Usuario)Session["usuario"];

        DataSet ds = Pru_Perfil_UsuarioDB.Select(usuario.Usu_codigo);
        txtNome.Text = usuario.Pes_codigo.Pes_Nome;
        txtRG.Text = usuario.Pes_codigo.Pes_Rg;
        txtCPF.Text = usuario.Pes_codigo.Pes_Cpf;
        txtDataDeNascimento.Text = Convert.ToString(usuario.Pes_codigo.Pes_Data);
        txtEmail.Text = usuario.Pes_codigo.Pes_Email;
        txtTelefone.Text = usuario.Pes_codigo.Pes_Telefone;
        txtCelular.Text = usuario.Pes_codigo.Pes_Celular;
        txtCEP.Text = usuario.Pes_codigo.Pes_Cep;
        txtCidade.Text = usuario.Pes_codigo.Pes_Cidade;
        ddlEstado.Text = usuario.Pes_codigo.Pes_Estado;
        txtBairro.Text = usuario.Pes_codigo.Pes_Bairro;
        txtNumero.Text = usuario.Pes_codigo.Pes_Numero;
        txtRua.Text = usuario.Pes_codigo.Pes_Rua;

        lblUsuario1.Text = usuario.Pes_codigo.Pes_Nome.ToString();
        lblUsuario2.Text = usuario.Pes_codigo.Pes_Nome.ToString();
        lblUsuario3.Text = usuario.Pes_codigo.Pes_Nome.ToString();        
    }
    protected void lkbSalvarLog_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Usu_Usuario usuario = (Usu_Usuario)Session["usuario"];
        Pes_Pessoas pessoa = new Pes_Pessoas();

        //DataSet ds = Pru_Perfil_UsuarioDB.SelectPerfilPorUsuario(usuario.Usu_codigo);

        txtNome.Text = usuario.Pes_codigo.Pes_Nome;
        txtRG.Text = usuario.Pes_codigo.Pes_Rg;
        txtCPF.Text = usuario.Pes_codigo.Pes_Cpf;
        txtDataDeNascimento.Text = Convert.ToString(usuario.Pes_codigo.Pes_Data);
        txtEmail.Text = usuario.Pes_codigo.Pes_Email;
        txtTelefone.Text = usuario.Pes_codigo.Pes_Telefone;
        txtCelular.Text = usuario.Pes_codigo.Pes_Celular;
        txtCEP.Text = usuario.Pes_codigo.Pes_Cep;
        txtCidade.Text = usuario.Pes_codigo.Pes_Cidade;
        ddlEstado.Text = usuario.Pes_codigo.Pes_Estado;
        txtBairro.Text = usuario.Pes_codigo.Pes_Bairro;
        txtNumero.Text = usuario.Pes_codigo.Pes_Numero;
        txtRua.Text = usuario.Pes_codigo.Pes_Rua;


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
}
