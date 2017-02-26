using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
/// <summary>
/// Summary description for Equ_Equipe_UsuarioDB
/// </summary>
public class Equ_Equipe_UsuarioDB
{
    public static int Insert(Equ_Equipe_Usuario eqp)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "INSERT INTO equ_equipe_usuario (eqp_codigo, usu_codigo ";
            sql += ") VALUES ";
            sql += "(?eqp_codigo,?usu_codigo)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?eqp_codigo", eqp.Eqp_codigo.Eqp_codigo));
            objCommand.Parameters.Add(Mapped.Parameter("?usu_codigo", eqp.Usu_codigo.Usu_codigo));

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

    public static Equ_Equipe_Usuario Select(int id, int id2)
    {
        try
        {
            Equ_Equipe_Usuario objTipo = null;
            IDbConnection objConexao;
            IDbCommand objCommand;
            IDataReader objDataReader;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM equ_equipe_usuario WHERE usu_codigo = ?usu_codigo and eqp_codigo = ?eqp_codigo", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?usu_codigo", id));
            objCommand.Parameters.Add(Mapped.Parameter("?eqp_codigo", id2));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                objTipo = new Equ_Equipe_Usuario();
                objTipo.Usu_codigo.Usu_codigo = Convert.ToInt32(objDataReader["usu_codigo"]);
                objTipo.Eqp_codigo.Eqp_codigo = Convert.ToInt32(objDataReader["eqp_codigo"]);
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

    public static DataSet SelectAll()
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command("SELECT * FROM equ_equipe_usuario ORDER BY usu_codigo", objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;

    }


}