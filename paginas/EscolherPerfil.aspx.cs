using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_EscolherPerfil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usuario"] == null)
            Response.Redirect("Login.aspx");

        //else if (Session["PERFIL"].ToString() == "participante")
        //    Response.Redirect("Login.aspx");

        Usu_Usuario usuario = (Usu_Usuario)Session["usuario"];
        DataSet ds = Pru_Perfil_UsuarioDB.Select(usuario.Usu_codigo);

        Ava_AvaliacaoDB.UpdateInativoautomatico();

        lblUsuario.Text = usuario.Pes_codigo.Pes_Nome.ToString();

        if (ds.Tables[0].Rows.Count > 0)
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (Convert.ToInt32(dr["per_codigo"]) == 1)
                    divParticipante.Visible = true;

                if (Convert.ToInt32(dr["per_codigo"]) == 2)
                    divAvaliador.Visible = true;

                if (Convert.ToInt32(dr["per_codigo"]) == 3)
                    divAdministradorComum.Visible = true;

                if (Convert.ToInt32(dr["per_codigo"]) == 4)
                    divAdministradorMaster.Visible = true;
            }
        }        
    }
    protected void lkbAdministradorMaster_Click(object sender, EventArgs e)
    {
        Usu_Usuario usuario = (Usu_Usuario)Session["usuario"];
        Usu_UsuarioDB.UpdateDataAcesso(usuario);
        Session["PERFIL"] = "administradorMaster";

        //// HISTÓRICO // ------------------------------------
        //Hst_Historico historico = new Hst_Historico();
        //Hst_HistoricoDB historicoDB = new Hst_HistoricoDB();
        //historico.Hst_data = DateTime.Now;
        //historico.Hst_atividade = "Escolheu o Perfil <b>Administrador Master</b>";
        //historico.Pes_codigo.Pes_Nome = usuario.Pes_codigo.Pes_Nome;
        //Hst_HistoricoDB.Insert(historico);
        ////--------------------------------------------------

        Response.Redirect("AdministradorMaster.aspx");
    }
    protected void lkbAdministradorComum_Click(object sender, EventArgs e)
    {
        Usu_Usuario usuario = (Usu_Usuario)Session["usuario"];
        Usu_UsuarioDB.UpdateDataAcesso(usuario);
        Session["PERFIL"] = "administradorComum";
        Response.Redirect("AdministradorComum.aspx");
    }
    protected void lkbAvaliador_Click(object sender, EventArgs e)
    {
        Usu_Usuario usuario = (Usu_Usuario)Session["usuario"];
        Usu_UsuarioDB.UpdateDataAcesso(usuario);
        Session["PERFIL"] = "avaliador";
        Response.Redirect("Avaliador.aspx");
    }
    protected void lkbParticipante_Click(object sender, EventArgs e)
    {
        Usu_Usuario usuario = (Usu_Usuario)Session["usuario"];        
        Usu_UsuarioDB.UpdateDataAcesso(usuario);       
        Session["PERFIL"] = "participante";
        Response.Redirect("Participante.aspx");
    }
}