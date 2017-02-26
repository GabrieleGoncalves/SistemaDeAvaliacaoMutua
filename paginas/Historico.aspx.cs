using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Sam.Funcoes;
using System.Text;

public partial class paginas_Historico : System.Web.UI.Page
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
        if (Session["usuario"] == null)
            Response.Redirect("Login.aspx");

        CarregarGrid();


    }
    public void CarregarGrid()
    {
        DataSet DS = Hst_HistoricoDB.SelectAll();
        Sam.Funcoes.Funcoes.CarregarGridComDS(gridHistorico, DS);
    }
    protected void gridHistorico_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gridHistorico.PageIndex = e.NewPageIndex;
        CarregarGrid();
    }
    protected void lkbSalvar_Click(object sender, EventArgs e)
    {
        //Response.Redirect("Historico_Exportar.aspx");
        DataSet DS = Hst_HistoricoDB.SelectAll();
        //Sam.Funcoes.Funcoes.CarregarGridComDS(gridHistorico, DS);
        Literal lbl = new Literal();
        lbl.Text = "<table>";

        foreach (DataRow dr in DS.Tables[0].Rows)
        {
            lbl.Text += "<tr><td>" + dr[0] + "</td><td>" + dr[1] + "</td><td>" + dr[2] + "</td><td>" + dr[3] + "</td><td>" + dr[4] + "</td></tr>";
        }
        lbl.Text += "</table>";
            HttpContext.Current.Response.ContentType = "application/ms-excel.xls";
            var iso = Encoding.GetEncoding("iso-8859-1");
            HttpContext.Current.Response.Charset = iso.WebName;
            HttpContext.Current.Response.AddHeader("content-disposition", "filename=" + DateTime.Now + ".xls");
            HttpContext.Current.Response.ContentEncoding = iso;
            HttpContext.Current.Response.Write(lbl.Text);
            HttpContext.Current.Response.End();
       // }
    }
}