using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for Per_perfilDB
/// </summary>
public class Per_PerfilDB
{
    public static int Insert(Per_Perfil perfil)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "INSERT INTO per_perfil (per_descricao) VALUS (?per_descricao)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?per_descricao", perfil.Per_descricao));

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

    public static int Update(Per_Perfil perfil) 
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "UPDATE per_perfil SET per_descricao = ?per_descricao ";
            sql += "WHERE per_codigo = ?per_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?per_descricao", perfil.Per_descricao));

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
            string sql = "DELETE FROM per_perfil WHERE per_codigo = ?per_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("per_codigo", id));

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

    public static Per_Perfil Select(int id)
    {
        try
        {
            Per_Perfil objTipo = null;
            IDbConnection objConexao;
            IDbCommand objCommand;
            IDataReader objDataReader;
            string sql = "SELECT * FROM per_perfil WHERE per_codigo = ?per_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?per_codigo", id));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                objTipo = new Per_Perfil();
                objTipo.Per_codigo = Convert.ToInt32(objDataReader["per_codigo"]);
                objTipo.Per_descricao = objDataReader["pes_descricao"].ToString();
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
        string sql = "SELECT * FROM per_perfil ORDER BY per_codigo";
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;
    }

    public static List<Per_Perfil> SelectPerfisUsuario(Usu_Usuario usu)
    {
        try
        {
            List<Per_Perfil> objTipo = null;
            IDbConnection objConexao;
            IDbCommand objCommand;
            IDataReader objDataReader;
            objConexao = Mapped.Connection();

            string sql = "SELECT * FROM " +
            "pru_perfil_usuario pru " +
            "INNER JOIN " +
            "per_perfil per " +
            "ON pru.per_codigo = per.per_codigo WHERE pru.usu_codigo = " + usu.Usu_codigo + "";
            objCommand = Mapped.Command("SELECT * FROM " +
            "pru_perfil_usuario pru " +
            "INNER JOIN " +
            "Per_perfil per " +
            "ON pru.per_codigo = per.per_codigo WHERE pru.usu_codigo = ?usu_codigo ORDER BY pru_descricao", objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?usu_codigo", usu.Usu_codigo));
            objDataReader = objCommand.ExecuteReader();
            objTipo = new List<Per_Perfil>();
            
            while (objDataReader.Read())
            {
                Per_Perfil per = new Per_Perfil();
                per.Per_codigo = Convert.ToInt32(objDataReader["per_codigo"]);
                per.Per_descricao = objDataReader["per_descricao"].ToString();
                objTipo.Add(per);
            }

            objDataReader.Close();
            objConexao.Close();
            objConexao.Dispose();
            objCommand.Dispose();
            objDataReader.Dispose();

            return objTipo;
        }
        catch (Exception e)
        {
            return null;
        }
    }
}