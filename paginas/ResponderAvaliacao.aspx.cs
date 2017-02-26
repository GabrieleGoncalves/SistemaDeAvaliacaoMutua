using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class paginas_ResponderAvaliacao : System.Web.UI.Page
{
    void Page_PreInit(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["PERFIL"] != null)
            {
                if (Session["PERFIL"].ToString() == "avaliador")
                    MasterPageFile = "~/paginas/MasterPageAvaliador.master";
                else
                    Response.Redirect("Login.aspx");
            }
            else
                Response.Redirect("Login.aspx");
        }
    }
    int rowsCount = 0;
    int colsCount = 0;
    Table table = new Table();
    //int teste = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["avaliacao"] != null)
        {
            string link = Request.QueryString["avaliacao"].ToString();
            int x = Convert.ToInt32(link);
            Ava_Avaliacao avalia = Ava_AvaliacaoDB.Select(x);
          
            CriaDataTable(link);
        }
    }

    public void CriaDataTable(string link)
    {
        int tipo = 0;
        int teste = Convert.ToInt32(link);
        Ava_Avaliacao avat = Ava_AvaliacaoDB.Select(teste);
        tipo = Convert.ToInt32(avat.Ava_tipo);
        //  if ((tipo == 90)||(tipo==180))
        //  {
        DataTable dt = new DataTable("TabelaResponder");
        DataRow drow = dt.NewRow();
        DataSet criterio = Cri_CriterioDB.Selecteste(teste);
        Ava_Avaliacao avali = Ava_AvaliacaoDB.Select(teste);
        DataSet Nomes;
        if (avali.Ava_tipo.Equals("180"))
        {
            Nomes = Eqa_Equipe_AvaliacaoDB.Select180Avaliador(teste);
        }
        else
        {
            Nomes = Eqa_Equipe_AvaliacaoDB.SELECTteste(teste);
        }
        int qtd = criterio.Tables[0].Rows.Count;
        int qtd2 = Nomes.Tables[0].Rows.Count;
        if (qtd > 0 && qtd2>0)
        {
            dt.Columns.Add(" ", typeof(string));

            foreach (DataRow dr in criterio.Tables[0].Rows)
            {
                Cri_Criterio cri = Cri_CriterioDB.Select(Convert.ToInt32(dr["cri_codigo"].ToString()));
                dt.Columns.Add(dr["cri_codigo"].ToString() + "|" + cri.Cri_descricao.ToString(), typeof(string));
            }

            TextBox txtNotas;
            int t = 0;
            for (int j = 0; j < Nomes.Tables[0].Rows.Count; j++)
            {
                drow = dt.NewRow();

                for (int i = 0; i < criterio.Tables[0].Rows.Count + 1; i++)
                {
                    if (i == 0)
                    {
                        drow[" "] = Nomes.Tables[0].Rows[j]["usu_codigo"].ToString() + "|" + Nomes.Tables[0].Rows[j]["pes_nome"].ToString();
                    }
                    else
                    {
                        txtNotas = new TextBox();
                        txtNotas.ID = "txtNotas" + i;
                        txtNotas.ClientIDMode = System.Web.UI.ClientIDMode.Static;
                        drow[criterio.Tables[0].Rows[i - 1]["cri_codigo"].ToString() + "|" + criterio.Tables[0].Rows[i - 1]["cri_descricao"].ToString()] = (TextBox)txtNotas;
                    }
                }
                dt.Rows.Add(drow);
            }
            if (avali.Ava_tipo.Equals("360"))
            {
                DataSet avaliador = Eqa_Equipe_AvaliacaoDB.SelectAvaliador2(teste);
                drow = dt.NewRow();
                drow[" "] = avaliador.Tables[0].Rows[0]["usu_codigo"].ToString() + "|" + avaliador.Tables[0].Rows[0]["pes_nome"].ToString();
                dt.Rows.Add(drow);
            }
            Tabela(dt);
        }
      
    }
    protected void Tabela(DataTable dtSource)
    {


        rowsCount = dtSource.Rows.Count + 1;
        colsCount = dtSource.Columns.Count;

        //Creat the Table and Add it to the Page
        // Table table = new Table();
        table.ID = "Table1";
        table.CssClass = "table table-hover";
        // Add the dynamic table to the PlaceHolder control
        PlaceHolder1.Controls.Add(table);

        TableRow linha = new TableRow();
        Label lblCriterio;
        Label lblNomeCriterio;
        int x = 0;
        foreach (DataColumn dc in dtSource.Columns)
        {
            lblCriterio = new Label();
            lblCriterio.ID = "cri" + x;
            lblCriterio.Visible = false;
            TableCell cab = new TableCell();
            string[] texto = dc.ColumnName.ToString().Split('|');
            lblCriterio.Text = texto[0];

            linha.Cells.Add(cab);
            cab.Controls.Add(lblCriterio);
            lblNomeCriterio = new Label();
            lblNomeCriterio.Font.Bold = true;
            lblNomeCriterio.Font.Size = 12;
            if (x > 0)
                lblNomeCriterio.Text = texto[1];
            cab.Controls.Add(lblNomeCriterio);
            x++;
        }
        table.Rows.Add(linha);

        Label lblNome;
        Label lblCodNome;
        // Now iterate through the datatable and add the controls
        for (int rowIndex = 0; rowIndex < rowsCount - 1; rowIndex++)
        {
            TableRow row = new TableRow();

            for (int colIndex = 0; colIndex < colsCount; colIndex++)
            {
                TableCell cell = new TableCell();



                if (colIndex == 0)
                {
                    lblCodNome = new Label();
                    lblCodNome.ID = "nom" + rowIndex;
                    lblCodNome.Visible = false;
                    string[] nome = dtSource.Rows[rowIndex][colIndex].ToString().Split('|');
                    lblCodNome.Text = nome[0];

                    lblNome = new Label();
                    cell.Controls.Add(lblCodNome);
                    lblNome.Font.Bold = true;
                    lblNome.Text = nome[1];
                    cell.Controls.Add(lblNome);
                }
                else
                {
                    TextBox tb = new TextBox();
                    tb.CssClass = "form-control";
                    // Set a unique ID for each TextBox added
                    tb.ID = "TextBoxRow_" + rowIndex + "Col_" + colIndex;
                    // Assign value for each TextBox added
                    //tb.Text = dtSource.Rows[rowIndex][colIndex].ToString();
                    // Add the control to the TableCell
                    cell.Controls.Add(tb);
                }
                // Add the TableCell to the TableRow
                row.Cells.Add(cell);
            }
            // After the columns iteration, add the TableRow to the Table
            table.Rows.Add(row);
        }




    }
    public void testeMeteodo()
    {

        int[] crit;
        int[] usuarios;

        crit = new int[colsCount];
        usuarios = new int[rowsCount];
        string link = Request.QueryString["avaliacao"].ToString();
        Res_Resposta res = new Res_Resposta();
        Ava_Avaliacao ava = new Ava_Avaliacao();
        Usu_Usuario usu1 = new Usu_Usuario();
        Usu_Usuario usu = new Usu_Usuario();
        TextBox txt = new TextBox();
        int avali = Convert.ToInt32(link);
        for (int i = 0; i < rowsCount; i++)
        {
            for (int h = 0; h < colsCount; h++)
            {
                if (i == 0 && h > 0)
                    crit[h] = Convert.ToInt32(((Label)PlaceHolder1.FindControl("cri" + h)).Text);
                if (h == 0 && i > 0)
                    usuarios[i] = Convert.ToInt32(((Label)PlaceHolder1.FindControl("nom" + (i - 1))).Text);

                // int avali = Convert.ToInt32(link);

                res = new Res_Resposta();
                ava = new Ava_Avaliacao();
                usu1 = new Usu_Usuario();
                usu = new Usu_Usuario();
                txt = new TextBox();
                if (i != 0 && h != 0)
                {
                    Cri_Criterio crite = new Cri_Criterio();
                    txt = (TextBox)PlaceHolder1.FindControl("TextBoxRow_" + (i - 1) + "Col_" + h);


                    crite.Cri_codigo = crit[h];
                    //usu1.Usu_codigo = 2;
                    res.Usu_codigo1 = new Usu_Usuario();
                    Usu_Usuario usuario1 = (Usu_Usuario)Session["usuario"];
                    res.Usu_codigo1=usuario1;
                    //usu.Usu_codigo = usuarios[i];
                    res.Usu_codigo = new Usu_Usuario();
                    res.Usu_codigo.Usu_codigo = usuarios[i];
                    ava.Ava_codigo = avali;
                    res.Ava_codigo = ava;
                    res.Cri_codigo = crite;
                    res.Res_nota = Convert.ToInt32(txt.Text);
                    res.Res_codigo = Res_RespostaDB.Insert(res);
                }


            }
        }

    }
    protected void lkbCriarCritério_Click(object sender, EventArgs e)
    {
        testeMeteodo();
        string link = Request.QueryString["avaliacao"].ToString();
        int aval = Convert.ToInt32(link);
        Ava_Avaliacao ava = Ava_AvaliacaoDB.Select(aval);
        if (ava.Ava_tipo.Equals("90"))
        {
            Ava_AvaliacaoDB.UpdateInativo(aval);
        }
        Response.Redirect("Avaliador.aspx");
    }

   
}
