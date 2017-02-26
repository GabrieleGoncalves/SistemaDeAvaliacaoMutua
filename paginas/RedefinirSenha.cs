using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class paginas_RedefinirSenha : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usuario"] == null)
            Response.Redirect("Login.aspx");
    }
    protected void btnRedefinirSenha_Click(object sender, EventArgs e)
    {
        Usu_Usuario usuario = (Usu_Usuario)Session["usuario"];
        usuario.Usu_senha = txtSenha.Text;

        switch (Usu_UsuarioDB.UpdateSenha(usuario))
        {
            case 0:
                //// HISTÓRICO // ------------------------------------
                //Hst_Historico historico = new Hst_Historico();
                //Hst_HistoricoDB historicoDB = new Hst_HistoricoDB();
                //historico.Hst_data = DateTime.Now;
                //historico.Hst_atividade = "Redefiniu Senha";
                //Hst_HistoricoDB.Insert(historico);
                ////--------------------------------------------------

                Response.Write(@"<script language='javascript'>
                    alert('Senha Redefinida com Sucesso!');
                    
                    setTimeout(function(){location.href='EscolherPerfil.aspx';}, 4000);

                    if(alert)
                        location.href='EscolherPerfil.aspx';  
                </script>");     
                break;
            case -2:
                Response.Write(@"<script language='javascript'>alert('Erro ao Redefinir a Senha!');</script>");
                break;
        }
    }
}