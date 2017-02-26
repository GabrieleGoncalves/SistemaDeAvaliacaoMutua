using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class paginas_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["usuario"] = null;
    }
    protected void btnEntrar_Click(object sender, EventArgs e)
    {
        Usu_Usuario usuario = new Usu_Usuario();
        Usu_UsuarioDB usuarioDB = new Usu_UsuarioDB();
        usuario.Usu_login = Convert.ToInt32(txtLogin.Text);
        usuario.Usu_senha = Sam.Funcoes.Funcoes.HashCriptografia(txtSenha.Text, "SHA512");
        
        usuario = usuarioDB.SelecionarPorLogin(usuario);        

        if (usuario != null)
        {
            if (usuario.Usu_status == 1)
            {
                Session.Add("usuario", usuario);

                // HISTÓRICO // ------------------------------------
                Hst_Historico historico = new Hst_Historico();
                Hst_HistoricoDB historicoDB = new Hst_HistoricoDB();
                historico.Hst_data = DateTime.Now;
                historico.Hst_atividade = "Logou no Sistema";
                Hst_HistoricoDB.Insert(historico);
                //--------------------------------------------------

                if (usuario.Usu_data_acesso == null)
                    Response.Redirect("RedefinirSenha.aspx");
                else
                    Response.Redirect("EscolherPerfil.aspx");
            }
            else
                Response.Write(@"<script language='javascript'>alert('Usuário Desativado!');</script>");
        }
        else
            Response.Write(@"<script language='javascript'>alert('Usuário Não Cadastrado ou Senha Incorreta!');</script>");
    }
}
