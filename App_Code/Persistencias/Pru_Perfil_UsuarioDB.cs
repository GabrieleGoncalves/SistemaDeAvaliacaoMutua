using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for Pru_perfil_usuarioDB
/// </summary>
public class Pru_Perfil_UsuarioDB
{
    public static int Insert(Pru_Perfil_Usuario pru)
    {

        int retorno = 0;

        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "INSERT INTO pru_perfil_usuario (usu_codigo, per_codigo)";
            sql += " VALUES (?usu_codigo, ?per_codigo)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?usu_codigo", pru.Usu_codigo.Usu_codigo));
            objCommand.Parameters.Add(Mapped.Parameter("?per_codigo", pru.Per_codigo.Per_codigo));
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

    public static DataSet Select(int usu_codigo)
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command("SELECT * FROM pru_perfil_usuario inner join per_perfil using(per_codigo) where usu_codigo = ?usu_codigo ORDER BY per_codigo;", objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objCommand.Parameters.Add(Mapped.Parameter("?usu_codigo", usu_codigo));
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;
    }    
    public static DataSet SelectAll2(int per_codigo)
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command("SELECT * FROM pru_perfil_usuario inner join per_perfil using(per_codigo) inner join usu_usuario using(usu_codigo) inner join pes_pessoa using(pes_codigo) where per_codigo = ?per_codigo ORDER BY per_codigo;", objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objCommand.Parameters.Add(Mapped.Parameter("?per_codigo", per_codigo));
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;
    }
    public static DataSet SelectAll()
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command("SELECT * FROM pru_perfil_usuario ORDER BY per_codigo", objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;

    }
    public static DataSet SelectPerfilPorUsuario(int usu_codigo)
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command("SELECT * FROM pru_perfil_usuario inner join per_perfil using(per_codigo) where usu_codigo = ?usu_codigo ORDER BY per_codigo;", objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objCommand.Parameters.Add(Mapped.Parameter("?usu_codigo", usu_codigo));
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;

    }

    public static DataSet SelectAllPerfil(int per_codigo)
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command("SELECT * FROM pru_perfil_usuario inner join per_perfil using(per_codigo) inner join usu_usuario using(usu_codigo) inner join pes_pessoa using(pes_codigo) where per_codigo = ?per_codigo ORDER BY per_codigo;", objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objCommand.Parameters.Add(Mapped.Parameter("?per_codigo", per_codigo));
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;
    }
    public static DataSet SelectAllPerfilADM()
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command("SELECT * FROM pru_perfil_usuario ORDER BY per_codigo", objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);

        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;
    }
    
    public static DataSet SelectParticipante()
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command("select per_codigo from per_perfil where per_descricao = 'Participante'; ", objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;
    } 
    //public static Pru_Perfil_Usuario Select(int id, int id2)
    //{
    //    try
    //    {
    //        Pru_Perfil_Usuario objTipo = null;
    //        IDbConnection objConexao;
    //        IDbCommand objCommand;
    //        IDataReader objDataReader;
    //        objConexao = Mapped.Connection();
    //        objCommand = Mapped.Command("SELECT * FROM pru_perfil_usuario WHERE usu_codigo = ?usu_codigo and per_codigo = ?per_codigo", objConexao);
    //        objCommand.Parameters.Add(Mapped.Parameter("?usu_codigo", id));
    //        objCommand.Parameters.Add(Mapped.Parameter("?per_codigo", id2));
    //        objDataReader = objCommand.ExecuteReader();
    //        while (objDataReader.Read())
    //        {
    //            objTipo = new Pru_Perfil_Usuario();
    //            objTipo.Usu_codigo.Usu_codigo = Convert.ToInt32(objDataReader["usu_codigo"]);
    //            objTipo.Per_codigo.Per_codigo = Convert.ToInt32(objDataReader["per_codigo"]);
    //        }
    //        objDataReader.Close();
    //        objConexao.Close();
    //        objConexao.Dispose();
    //        objCommand.Dispose();
    //        objDataReader.Dispose();
    //        return objTipo;

    //    }
    //    catch (Exception e)
    //    {
    //        return null;

    //    }
    //}
    
    //public static DataSet SelectAllPerfilADM()
    //{
    //    DataSet ds = new DataSet();
    //    IDbConnection objConexao;
    //    IDbCommand objCommand;
    //    IDataAdapter objDataAdapter;
    //    objConexao = Mapped.Connection();
    //    objCommand = Mapped.Command("SELECT * FROM pru_perfil_usuario ORDER BY per_codigo", objConexao);
    //    objDataAdapter = Mapped.Adapter(objCommand);

    //    objDataAdapter.Fill(ds);
    //    objConexao.Close();
    //    objCommand.Dispose();
    //    objConexao.Dispose();
    //    return ds;
    //}
    //public static DataSet SelectAll()
    //{
    //    DataSet ds = new DataSet();
    //    IDbConnection objConexao;
    //    IDbCommand objCommand;
    //    IDataAdapter objDataAdapter;
    //    objConexao = Mapped.Connection();
    //    objCommand = Mapped.Command("SELECT * FROM pru_perfil_usuario ORDER BY per_codigo", objConexao);
    //    objDataAdapter = Mapped.Adapter(objCommand);
    //    objDataAdapter.Fill(ds);
    //    objConexao.Close();
    //    objCommand.Dispose();
    //    objConexao.Dispose();
    //    return ds;
    //}    
}