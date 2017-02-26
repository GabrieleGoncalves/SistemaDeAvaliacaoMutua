using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
/// <summary>
/// Summary description for Eqp_EquipeDB
/// </summary>
public class Eqp_EquipeDB
{
    public static int Insert(Eqp_Equipe equipe)
    {
        int retorno = 1;

        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "INSERT INTO eqp_equipe (eqp_descricao,eqp_nome, aud_pes_codigo) VALUES (?eqp_descricao,?eqp_nome,?aud_pes_codigo); SELECT last_insert_id();";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?eqp_descricao", equipe.Eqp_descricao));
            objCommand.Parameters.Add(Mapped.Parameter("?eqp_nome", equipe.Eqp_nome));
            retorno = Convert.ToInt32(objCommand.ExecuteScalar());
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
        }
        catch (Exception e)
        {
            retorno = 0;
        }
        return retorno;
    }

    public static int Update(Eqp_Equipe equipe)
    {
        int retorno = 1;

        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "UPDATE eqp_equipe SET eqp_descricao = ?equ_descricao, eqp_nome=?eqp_nome ";
            sql += "WHERE eqp_codigo = ?eqp_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?eqp_descricao", equipe.Eqp_descricao));
            objCommand.Parameters.Add(Mapped.Parameter("?eqp_nome", equipe.Eqp_nome));
            objCommand.Parameters.Add(Mapped.Parameter("?eqp_codigo", equipe.Eqp_codigo));
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
            string sql = "DELETE FROM eqp_equipe WHERE eqp_codigo = ?eqp_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("eqp_codigo", id));

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

    public static Eqp_Equipe Select(int id)
    {
        try
        {
            Eqp_Equipe objTipo = null;
            IDbConnection objConexao;
            IDbCommand objCommand;
            IDataReader objDataReader;
            string sql = "SELECT * FROM eqp_equipe WHERE eqp_codigo = ?eqp_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?eqp_codigo", id));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                objTipo = new Eqp_Equipe();
                objTipo.Eqp_codigo = Convert.ToInt32(objDataReader["eqp_codigo"]);
                objTipo.Eqp_nome = objDataReader["eqp_nome"].ToString();
                objTipo.Eqp_descricao = objDataReader["eqp_descricao"].ToString();
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

    public static DataSet SelectAll()
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        string sql = "SELECT * FROM eqp_equipe ORDER BY eqp_codigo";
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;
    }

    public static DataSet Select180(int id)
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        string sql = "select*from eqp_equipe eqp where eqp.eqp_codigo not in (select equ.eqp_codigo from equ_equipe_usuario equ where  equ.usu_codigo="+id+")";
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;
    }
}