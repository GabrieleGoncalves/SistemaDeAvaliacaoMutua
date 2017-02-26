using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_Historico_Exportar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //CarregarGrid();
        HttpContext.Current.Response.ContentType = "application/vnd.ms-excel";
        var iso = Encoding.GetEncoding("iso-8859-1");
        HttpContext.Current.Response.Charset = iso.WebName;
        HttpContext.Current.Response.AddHeader("content-disposition", "filename=" + DateTime.Now + ".xls");
        HttpContext.Current.Response.ContentEncoding = iso;
        DataSet DS = Hst_HistoricoDB.SelectAll();
        //Sam.Funcoes.Funcoes.CarregarGridComDS(gridHistorico, DS);
        Literal lbl = new Literal();
        lbl.Text = "<table>";
        foreach (DataRow dr in DS.Tables[0].Rows)
        {
            lbl.Text += "<tr><td>" + dr[0] + "</td><td>" + dr[1] + "</td><td>" + dr[2] + "</td><td>" + dr[3] + "</td><td>" + dr[4] + "</td></tr>";
        }
        lbl.Text += "</table>";
        HttpContext.Current.Response.Write(lbl.Text);
        HttpContext.Current.Response.End();
        


    }
    public void CarregarGrid()
    {
        DataSet DS = Hst_HistoricoDB.SelectAll();
        Sam.Funcoes.Funcoes.CarregarGridComDS(gridHistorico, DS);
    }
}