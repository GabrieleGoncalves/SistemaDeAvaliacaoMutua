using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Bkp_BackupDB
/// </summary>
public class Bkp_BackupDB
{
    public static int Insert(Bkp_Backup backup)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "INSERT INTO bkp_backup (bkp_nome, bkp_data) VALUES (?bkp_nome, ?bkp_data)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?bkp_nome", backup.Bkp_nome));
            objCommand.Parameters.Add(Mapped.Parameter("?bkp_data", backup.Bkp_data));
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

    public static int Update(Bkp_Backup backup)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "UPDATE bkp_backup SET (bkp_nome = ?bkp_nome, bkp_diretotio = ?bkp_diretorio, bkp_data = ?bkp_data) ";
            sql += "WHERE bkp_codigo = ?bkp_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?bkp_nome", backup.Bkp_nome));
            objCommand.Parameters.Add(Mapped.Parameter("?bkp_diretotio", backup.Bkp_diretorio));
            objCommand.Parameters.Add(Mapped.Parameter("?bkp_data", backup.Bkp_data));
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
            string sql = "DELETE FROM bkp_backup WHERE bkp_codigo = ?bkp_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("pbkp_codigo", id));

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

    public static Bkp_Backup Select(int id)
    {
        try
        {
            Bkp_Backup objTipo = null;
            IDbConnection objConexao;
            IDbCommand objCommand;
            IDataReader objDataReader;
            string sql = "SELECT * FROM bkp_backup WHERE bkp_codigo = ?bkp_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?bkp_codigo", id));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                objTipo = new Bkp_Backup();
                objTipo.Bkp_codigo = Convert.ToInt32(objDataReader["bkp_codigo"]);
                objTipo.Bkp_nome = objDataReader["bkp_nome"].ToString();
                objTipo.Bkp_diretorio = objDataReader["bkp_diretorio"].ToString();
                objTipo.Bkp_data = Convert.ToDateTime(objDataReader["bkp_data"]);
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
        string sql = "SELECT * FROM bkp_backup ORDER BY bkp_codigo";
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