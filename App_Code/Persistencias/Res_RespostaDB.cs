using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
/// <summary>
/// Summary description for Res_RespostaDB
/// </summary>
public class Res_RespostaDB
{
    public static int Insert(Res_Resposta res)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "INSERT INTO res_resposta (res_nota,usu_codigo,usu_codigo1,ava_codigo,cri_codigo) VALUES (?res_nota,?usu_codigo,?usu_codigo1,?ava_codigo,?cri_codigo)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?res_nota", res.Res_nota));
            objCommand.Parameters.Add(Mapped.Parameter("?usu_codigo", res.Usu_codigo.Usu_codigo));
            objCommand.Parameters.Add(Mapped.Parameter("?usu_codigo1", res.Usu_codigo1.Usu_codigo));
            objCommand.Parameters.Add(Mapped.Parameter("?ava_codigo", res.Ava_codigo.Ava_codigo));
            objCommand.Parameters.Add(Mapped.Parameter("?cri_codigo", res.Cri_codigo.Cri_codigo));
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

    public static int Update(Res_Resposta res)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "UPDATE res_resposta SET res_nota = ?res_nota";
            sql += "WHERE res_codigo = ?res_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?res_nota", res.Res_nota));
            objCommand.Parameters.Add(Mapped.Parameter("?res_codigo", res.Res_codigo));
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
    public static int Delete(int id)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "DELETE FROM res_resposta WHERE res_codigo = ?res_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?res_codigo", id));

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

    public static Res_Resposta Select(int id)
    {
        try
        {
            Res_Resposta objTipo = null;
            IDbConnection objConexao;
            IDbCommand objCommand;
            IDataReader objDataReader;
            string sql = "SELECT * FROM res_resposta WHERE res_codigo = ?res_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?res_codigo", id));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                objTipo = new Res_Resposta();
                objTipo.Res_codigo = Convert.ToInt32(objDataReader["res_codigo"]);
                objTipo.Res_nota = Convert.ToDouble(objDataReader["pes_descricao"]);
                objTipo.Usu_codigo.Usu_codigo = Convert.ToInt32(objDataReader["usu_codigo"]);
                objTipo.Usu_codigo1.Usu_codigo = Convert.ToInt32(objDataReader["usu_codigo1"]);
                objTipo.Ava_codigo.Ava_codigo = Convert.ToInt32(objDataReader["ava_codigo"]);
                objTipo.Cri_codigo.Cri_codigo = Convert.ToInt32(objDataReader["cri_codigo"]);
            }
            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return objTipo;
        }
        catch (Exception e)
        {
            return null;
        }
    }

    public static DataSet SelectRelatorio(int id, int id2)
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command("SELECT * FROM res_resposta res INNER JOIN cri_criterio cri on res.cri_codigo = cri.cri_codigo inner join pes_pessoa pes on res.usu_codigo1=pes.pes_codigo where res.ava_codigo=" + id + " and res.usu_codigo=" + id2, objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;

    }

    public static DataSet SelectRelatorioPositivos(int id, int id2)
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command("select cri_descricao  from cri_criterio cri  inner join res_resposta res  on res.cri_codigo=cri.cri_codigo  where usu_codigo=" + id + " and res.ava_codigo=" + id2 + " and res_nota  > 6", objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;

    }

    public static DataSet SelectRelatorioNegativos(int id, int id2)
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command("select cri_descricao from cri_criterio cri  inner join res_resposta res  on res.cri_codigo=cri.cri_codigo   where usu_codigo=" + id + " and res.ava_codigo=" + id2 + " and res_nota  < 6", objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;

    }


}