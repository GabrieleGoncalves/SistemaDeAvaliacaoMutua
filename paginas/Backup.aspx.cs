using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class paginas_Backup: System.Web.UI.Page
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
        CarregarGrid();

        if (!Page.IsPostBack)
        {
           CarregarGrid();

        }
    }

    private void CarregarGrid()
    {

        DataSet ds = Bkp_BackupDB.SelectAll();
        // Sam.Funcoes.Funcoes.CarregarGridComDS(gridAdministradorComum, ds);
        Sam.Funcoes.Funcoes.CarregarGridComDS(GridView1, ds);

    }

    protected string FazerBackup()
    {
        // Pegando caminho da pasta de backup dentro do projeto OBS: Necessário criar a pasta com o nome 'Backup' dentro da pasta principal do sistema
        string strDestPath = Server.MapPath("~/Backup/");

        //Nome do arquivo
        string arq = "backup" + DateTime.Now.ToString("dd-MM-yyyy HH.mm.ss") + ".sql";

        //Nome do arquivos com data e hora
        string file = strDestPath + arq;

        //Codigão criador do backup
        using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.AppSettings["strConexao"]))
        {
            using (MySqlCommand cmd = new MySqlCommand())
            {
                // baixar DLL MysqlBackup e MySql Data; 
                using (MySqlBackup mb = new MySqlBackup(cmd))
                {
                    cmd.Connection = conn;
                    conn.Open();
                    mb.ExportToFile(file);
                    conn.Close();
                }
            }
        }
        return arq;
    }

   
   
    protected void lkbExportar_Click(object sender, EventArgs e )
    {

        string arq = FazerBackup();

        Response.Write(@"<script language='javascript'>alert('Exportação realizada com sucesso.');</script>");
        Bkp_Backup backup = new Bkp_Backup();

              backup.Bkp_nome = arq;
              backup.Bkp_data = DateTime.Now;
              
              switch (Bkp_BackupDB.Insert(backup))
              {
                  case 0:
                      Response.Write(@"<script language='javascript'>alert('Cadastro Efetuado com Sucesso');</script>");
                      CarregarGrid();
                      break;
                  case -2:
                      Response.Write(@"<script language='javascript'>alert('Cadastro Não Efetuado');</script>");
                      break;
              }
    
    }
  
    protected void lkbDefinirHorario_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void bntBaixar_Click(object sender, EventArgs e)
    {
       
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HyperLink lnk = (HyperLink)e.Row.Cells[3].FindControl("hplBaixar");
            if (lnk != null)
            {
                lnk.NavigateUrl = "~/Backup/" + e.Row.Cells[1].Text;
                //Response.Redirect("~/Backup/"+e.Row.Cells[1].Text);
            }
        }
    }
}