using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.IO;
using System.Data;
using System.Web.UI.WebControls;
using System.Web.UI;
using System.Security;
using System.Security.Cryptography;
using System.Text;

/// <summary>
/// Summary description for Funcoes
/// </summary>
/// 
namespace Sam.Funcoes
{
    public class Funcoes
    {
        public static void limparCamposTextBox(Control controle)
        {
            foreach (Control cont in controle.Controls)
            {
                if (cont is TextBox)
                {
                    ((TextBox)cont).Text = string.Empty;
                }
                else if (cont.Controls.Count > 0)
                {
                    limparCamposTextBox(cont);
                }

            }
        }
        public static void carregaDDLcomDS(DataSet ds, DropDownList ddl, string TextValue, string TextField)
        {
            int qnt = Funcoes.QuantidadeDeRegistrosDS(ds);
            if (qnt > 0)
            {
                ddl.DataSource = ds;
                ddl.DataTextField = TextField;
                ddl.DataValueField = TextValue;
                ddl.DataBind();
                ddl.Items.Insert(0, "");
                ddl.Visible = true;
            }
            else
            {
                ddl.Visible = false;
            }
        }
        //public static void Append(Exception ex)
        //{
        //    try
        //    {
        //        string filename = @"" + ConfigurationManager.AppSettings["URLLog"] + "log.txt";
        //        if (!File.Exists(filename))
        //        {
        //            File.Create(filename);
        //        }
        //        else
        //        {
        //            String msg = ex.Message + "\n" + ex.StackTrace;
        //            StreamWriter sw = new StreamWriter(filename, true);
        //            sw.WriteLine(msg);
        //            sw.Close();
        //        }
        //    }
        //    catch (Exception e)
        //    {
        //    }
        //}
        public static int QuantidadeDeRegistrosDS(DataSet ds)
        {
            return ds.Tables[0].Rows.Count;
        }
        public static void CarregarGridComDS(GridView gdv, DataSet ds)
        {
            int qnt = Funcoes.QuantidadeDeRegistrosDS(ds);
            if (qnt > 0)
            {
                gdv.DataSource = ds.Tables[0].DefaultView;
                gdv.DataBind();
            }
            else
            {
                gdv.Visible = false;
            }
        }
        public static void GerarLog(Exception ex)
        {
            try
            {
                string filename = @"" + ConfigurationManager.AppSettings["URLLog"] + "log.txt";
                if (!File.Exists(filename))
                {
                    File.Create(filename);
                }
                else
                {
                    String msg = ex.Message + "\n" + ex.StackTrace;
                    StreamWriter sw = new StreamWriter(filename, true);
                    sw.WriteLine(msg);
                    sw.Close();
                }
            }
            catch (Exception e)
            {
            }
        }
        public static string HashCriptografia(string texto, string nomeHash)
        {
            HashAlgorithm algoritimo = HashAlgorithm.Create(nomeHash);

            if (algoritimo == null)
            {
                throw new ArgumentException("Noma da Hash informada não é válida!");
            }

            byte[] hash = algoritimo.ComputeHash(Encoding.UTF8.GetBytes(texto));

            return Convert.ToBase64String(hash);
        }
        public static string Base64Codifica(string texto)
        {
            byte[] stringBase64 = new byte[texto.Length];
            stringBase64 = Encoding.UTF8.GetBytes(texto);
            string codificacao = Convert.ToBase64String(stringBase64);
            return codificacao;
        }
        public static string Base64Descodifica(string texto)
        {
            var encode = new UTF8Encoding();
            var utf8Decode = encode.GetDecoder();
            byte[] stringValor = Convert.FromBase64String(texto);
            int contador = utf8Decode.GetCharCount(stringValor, 0, stringValor.Length);
            char[] decodeChar = new char[contador];
            utf8Decode.GetChars(stringValor, 0, stringValor.Length, decodeChar, 0);
            string descodificacao = new String(decodeChar);
            return descodificacao;
        }
        public static void CarregarDDL(System.Data.DataSet ds, DropDownList ddl, string valor, string texto)
        {
            int qtde = ds.Tables[0].Rows.Count;
            if (qtde > 0)
            {
                ddl.DataSource = ds.Tables[0].DefaultView;
                ddl.DataTextField = texto;
                ddl.DataValueField = valor;
                ddl.DataBind();
                ddl.Items.Insert(0, new ListItem("Selecione", "0"));
            }
        }
        public static int QuantidadeRegistrosDataset(DataSet ds)
        {
            int qtde = ds.Tables[0].Rows.Count;
            return qtde;
        }
        public static void CarregaGrid(DataSet ds, GridView grv, Label lbl)
        {
            int qtde = ds.Tables[0].Rows.Count;
            if (qtde > 0)
            {
                grv.DataSource = ds.Tables[0].DefaultView;
                grv.DataBind();
                if (qtde > 1)
                    lbl.Text = "Foram encontrados " + qtde.ToString() + " registros";
                else
                    lbl.Text = "Apenas um registro foi encontrado";

                grv.Visible = true;
            }
            else
            {
                lbl.Text = "Não foram encontrados registros";
                grv.Visible = false;
            }
        }
    }
}