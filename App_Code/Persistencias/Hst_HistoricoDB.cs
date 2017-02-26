using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for Hst_HistoricoDB
/// </summary>
public class Hst_HistoricoDB
{
    public static int Insert(Hst_Historico historico) 
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;
            IDbCommand objComando;
            string sql = "INSERT INTO aud_auditoria (aud_codigo, aud_atividade, hst_data=now(), pes_nome) VALUES (?hst_codigo, ?hst_atividade, ?hst_data, ?pes_nome)";
            objConexao = Mapped.Connection();
            objComando = Mapped.Command(sql, objConexao);
            objComando.Parameters.Add(Mapped.Parameter("?hst_atividade", historico.Hst_atividade));
            objComando.Parameters.Add(Mapped.Parameter("?hst_data", historico.Hst_data));
            objComando.Parameters.Add(Mapped.Parameter("?pes_nome", historico.Pes_codigo.Pes_Nome));
            objComando.ExecuteNonQuery();
            objConexao.Close();
            objComando.Dispose();
            objConexao.Dispose();
        }
        catch (Exception e)
        {
            retorno = -2;
        }
        return retorno;
    }
    public static int Update(Hst_Historico historico)
    {
        int retorno = 0;
        try
        {
            IDbConnection objConexao;
            IDbCommand objComando;

            string sql = "UPDATE hst_historico (hst_codigo, hst_atividade, hst_data) VALUES (?hst_codigo, ?hst_atividade, ?hst_data)";

            objConexao = Mapped.Connection();
            objComando = Mapped.Command(sql, objConexao);
            objComando.Parameters.Add(Mapped.Parameter("?hst_atividade", historico.Hst_atividade));
            objComando.Parameters.Add(Mapped.Parameter("?hst_data", historico.Hst_data));

            objComando.ExecuteNonQuery();
            objConexao.Close();
            objComando.Dispose();
            objConexao.Dispose();
        }
        catch (Exception e)
        {
            retorno = -2;
        }
        return retorno = 0;
    }

    public static DataSet SelectAll()
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objComando;
        IDataAdapter objDataAdapter;
        string sql = "SELECT * FROM aud_auditoria ORDER BY aud_data";
        objConexao = Mapped.Connection();
        objComando = Mapped.Command(sql, objConexao);
        objDataAdapter = Mapped.Adapter(objComando);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objComando.Dispose();
        objConexao.Dispose();
        return ds;

    }

}