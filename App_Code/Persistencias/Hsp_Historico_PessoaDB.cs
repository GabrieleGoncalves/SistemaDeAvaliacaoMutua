using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for Hsu_Historico_UsuarioDB
/// </summary>
public class Hsp_Historico_PessoaDB
{
    public static int Insert(Hsp_Historico_Pessoa historico)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "INSERT INTO hsp_historico_pessoa (hsp_codigo, pes_codigo) VALUES (?hsp_codigo, ?pes_codigo)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?hst_codigo", historico.Hst_codigo));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_codigo", historico.Pes_codigo));
            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
        }
        catch (Exception e)
        {
            retorno = -2;
        }
        return retorno;
    }
    public static DataSet Select(int pes_codigo)
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command("Select * from hsp_historico_pessoa inner join pes_pessoas using(pes_nome) where pes_nome = ?pes_nome order by pes_nome", objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objCommand.Parameters.Add(Mapped.Parameter("?pes_nome", pes_codigo));
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;
    }

    public static DataSet SelectAll(int hst_codigo)
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command("SELECT * FROM hsu_historico_usuario INNER JOIN hst_historico USING(hst_codigo) inner join usu_usuario using(usu_codigo) inner join pes_pessoa using(pes_codigo) where hst_codigo = ?hst_codigo ORDER BY hst_codigo;", objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objCommand.Parameters.Add(Mapped.Parameter("?hst_codigo", hst_codigo));
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;
    }
}