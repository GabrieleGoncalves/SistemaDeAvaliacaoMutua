using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class paginas_RelatorioIndividualParticipante : System.Web.UI.Page
{
    void Page_PreInit(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["PERFIL"] != null)
            {
                if (Session["PERFIL"].ToString() == "participante")
                    MasterPageFile = "~/paginas/MasterPageParticipante.master";
                else
                    Response.Redirect("EscolherPerfil.aspx");
            }
            else
                Response.Redirect("EscolherPerfil.aspx");
        }
    }

    
    string codAva;
    int qtdElementos = 0;
    double[] testecarrega;
    string[] nomesCrit;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["avaliacao"] != null)
        {
            string link = Request.QueryString["avaliacao"].ToString();
            codAva = link;

        }

        if (!Page.IsPostBack)
        {
          
        }

        CarregarRelatorio(codAva);
        calculaMedia(Convert.ToInt32(codAva));

    }

    public void CarregaGrafico()
    {

        lblScript.Text = "<script type='text/javascript' src='https://www.google.com/jsapi'></script>";
        lblScript.Text += "<script type='text/javascript'>";

        // Load the Visualization API and the piechart package.
        lblScript.Text += "google.load('visualization', '1.0', {'packages':['corechart']});";

        // Set a callback to run when the Google Visualization API is loaded.
        lblScript.Text += "google.setOnLoadCallback(drawChart);";

        // Callback that creates and populates a data table,
        // instantiates the pie chart, passes in the data and
        // draws it.
        lblScript.Text += "function drawChart() {";

        // Create the data table.
        lblScript.Text += " var data = new google.visualization.DataTable();";
        lblScript.Text += " data.addColumn('string', 'Topping');";
        lblScript.Text += "data.addColumn('number', ' ');";
        lblScript.Text += "data.addRows([";
        int t = Convert.ToInt32(codAva);
        Ava_Avaliacao avat = Ava_AvaliacaoDB.Select(t);
        if (avat.Ava_tipo.Equals("90"))
        {
            DataSet ds = Cra_Criterio_AvaliacaoDB.SelectQtd(t);
            nomesCrit = new string[ds.Tables[0].Rows.Count];
            int y = 0;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                nomesCrit[y] = dr["cri_descricao"].ToString();
                y++;
            }
            for (int i = 0; i < qtdElementos; i++)
            {
                lblScript.Text += "['" + nomesCrit[i] + "'," + gdvRelatorioIndividual.Rows[i].Cells[3].Text + "],";
            }
        }
        else
        {
            DataSet ds = Cra_Criterio_AvaliacaoDB.SelectQtd(t);
            qtdElementos = ds.Tables[0].Rows.Count;
            testecarrega = new double[ds.Tables[0].Rows.Count];
            nomesCrit = new string[ds.Tables[0].Rows.Count];
            int tamanhogrid = gdvRelatorioIndividual.Rows.Count;
            int y = 0;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                nomesCrit[y] = dr["cri_descricao"].ToString();
                y++;
            }
            for (int x = 0; x < (ds.Tables[0].Rows.Count); x++)
            {
                int x2 = 0;
                int i = x;

                for (; i < tamanhogrid; i += ds.Tables[0].Rows.Count)
                {
                    x2 += Convert.ToInt32(gdvRelatorioIndividual.Rows[i].Cells[3].Text);
                    testecarrega[x] = x2;
                }
                x2 = x2 / (tamanhogrid / ds.Tables[0].Rows.Count);
                lblScript.Text += "['" + nomesCrit[x] + "'," + x2 + "],";
                if (x2 < 6)
                {
                    ltbMelhorar.Items.Add(nomesCrit[x]);
                }
                else
                {
                    ltbPositivos.Items.Add(nomesCrit[x]);
                }
            }


        }
        // lblScript.Text+="['Mushrooms', 3],";
        //lblScript.Text+="['Onions', 1],";
        //lblScript.Text+="['Olives', 1],";
        //lblScript.Text+="['Zucchini', 1],";
        //lblScript.Text += "['oíção', 10]" ;
        lblScript.Text += "]);";

        // Set chart options
        lblScript.Text += "var options = {'title':'Grafico Representativo da Avaliação','width':500,'height':300,legend: { position: 'none' },";
        lblScript.Text += "vAxis: {";
        lblScript.Text += "viewWindow: {";
        lblScript.Text += "min: [0],";
        lblScript.Text += "max: [10]";
        lblScript.Text += "}";
        lblScript.Text += "}};";

        // Instantiate and draw our chart, passing in some options.
        lblScript.Text += "var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));";
        lblScript.Text += "chart.draw(data, options);";
        lblScript.Text += "}";
        lblScript.Text += "</script>";
    }
  

    protected void CarregarRelatorio(string link)
    {
        ltbPositivos.Items.Clear();
        ltbMelhorar.Items.Clear();

        CarregarPontosPositivos();
        CarregarPontosNegativos();
        int aval = Convert.ToInt32(link);
        Ava_Avaliacao avali = Ava_AvaliacaoDB.Select(aval);
        Usu_Usuario usuario = (Usu_Usuario)Session["usuario"];
        DataSet res = Res_RespostaDB.SelectRelatorio(aval, usuario.Usu_codigo);

        int qtd = res.Tables[0].Rows.Count;
        qtdElementos = qtd;
        if (qtd > 0)
        {
            if (avali.Ava_anonimo == 1)
            {
                gdvRelatorioAnonimo.DataSource = res.Tables[0].DefaultView;
                gdvRelatorioAnonimo.DataBind();
                gdvRelatorioAnonimo.Visible = true;
                lblScript.Text = "";
                CarregaGrafico();
            }
            else
            {
                gdvRelatorioIndividual.DataSource = res.Tables[0].DefaultView;
                gdvRelatorioIndividual.DataBind();
                gdvRelatorioIndividual.Visible = true;
                lblScript.Text = "";
                CarregaGrafico();
            }
        }
    }

    protected void CarregarPontosPositivos()
    {
        string link = Request.QueryString["avaliacao"].ToString();
        int x = Convert.ToInt32(link);
        Ava_Avaliacao avali = Ava_AvaliacaoDB.Select(x);
        if (avali.Ava_tipo.Equals("90"))
        {
            
             Usu_Usuario usuario = (Usu_Usuario)Session["usuario"];
            DataSet ds = Res_RespostaDB.SelectRelatorioPositivos(usuario.Usu_codigo, Convert.ToInt32(codAva));
            int qtd = ds.Tables[0].Rows.Count;

            if (qtd > 0)
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    ltbPositivos.Items.Add(new ListItem(dr["cri_descricao"].ToString(), "1"));
                }
            }
        }
    }

    protected void CarregarPontosNegativos()
    {
        string link = Request.QueryString["avaliacao"].ToString();
        int x = Convert.ToInt32(link);
        Ava_Avaliacao avali = Ava_AvaliacaoDB.Select(x);
        if (avali.Ava_tipo.Equals("90"))
        {

            Usu_Usuario usuario = (Usu_Usuario)Session["usuario"];
            DataSet ds = Res_RespostaDB.SelectRelatorioNegativos(usuario.Usu_codigo, Convert.ToInt32(codAva));
            int qtd = ds.Tables[0].Rows.Count;

            if (qtd > 0)
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    ltbMelhorar.Items.Add(new ListItem(dr["cri_descricao"].ToString(), "1"));
                }
            }
        }
    }

    protected void calculaMedia(int ava)
    {
        double media = 0;
        double somadospesos = 0;
        DataSet ds = new DataSet();
        for (int i = 0; i < qtdElementos; i++)
        {

            Usu_Usuario usuario = (Usu_Usuario)Session["usuario"];
            ds = Cra_Criterio_AvaliacaoDB.SelectMedia(ava,usuario.Usu_codigo);
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                media += Convert.ToDouble(dr["res_nota"]) * Convert.ToDouble(dr["cra_peso"]);
                somadospesos += Convert.ToDouble(dr["cra_peso"]);
            }
        }
        lblRecebeMedia.Text = Math.Round((media / somadospesos), 2).ToString();
    }

}