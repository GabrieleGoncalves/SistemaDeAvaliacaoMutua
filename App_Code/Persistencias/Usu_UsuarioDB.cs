using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for Usu_usuarioDB
/// </summary>
public class Usu_UsuarioDB
{
    public static int Insert(Usu_Usuario usuario)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "INSERT INTO usu_usuario (usu_login, usu_senha, usu_data_cadastro, usu_status, pes_codigo)";
            sql += " VALUES (?usu_login, ?usu_senha, ?usu_data_cadastro, ?usu_status, ?pes_codigo); select last_insert_id();";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?usu_login", usuario.Usu_login));
            objCommand.Parameters.Add(Mapped.Parameter("?usu_senha", Sam.Funcoes.Funcoes.HashCriptografia(usuario.Usu_senha, "SHA512")));
            objCommand.Parameters.Add(Mapped.Parameter("?usu_data_cadastro", usuario.Usu_data_cadastro));
            objCommand.Parameters.Add(Mapped.Parameter("?usu_status", usuario.Usu_status));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_codigo", usuario.Pes_codigo.Pes_Codigo));
            retorno = Convert.ToInt32(objCommand.ExecuteScalar());
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
    public static int Update(Usu_Usuario usuario)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "UPDATE usu_usuario SET usu_login = ?usu_login, usu_senha = ?usu_senha, ";
            sql += "usu_data_cadastro = ?usu_data_cadastro, usu_data_acesso = ?usu_data_acesso, ";
            sql += "pes_codigo = ?pes_codigo ";
            sql += "WHERE usu_codigo = ?usu_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?usu_login", usuario.Usu_login));
            objCommand.Parameters.Add(Mapped.Parameter("?usu_senha", Sam.Funcoes.Funcoes.HashCriptografia(usuario.Usu_senha, "SHA512")));
            objCommand.Parameters.Add(Mapped.Parameter("?usu_data_cadastro", usuario.Usu_data_cadastro));
            if (usuario.Usu_data_acesso == null)
                objCommand.Parameters.Add(Mapped.Parameter("?usu_data_acesso", DBNull.Value));
            else
                objCommand.Parameters.Add(Mapped.Parameter("?usu_data_acesso", usuario.Usu_data_acesso));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_codigo", usuario.Pes_codigo.Pes_Codigo));
            objCommand.Parameters.Add(Mapped.Parameter("?usu_codigo", usuario.Usu_codigo));

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

    public static int Desativar(Usu_Usuario usuario)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "UPDATE usu_usuario SET usu_status = 0 WHERE usu_codigo = ?usu_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?usu_status", usuario.Usu_status));
            objCommand.Parameters.Add(Mapped.Parameter("usu_codigo", usuario.Usu_codigo));
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
            string sql = "DELETE FROM usu_usuario WHERE usu_codigo = ?usu_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("usu_codigo", id));

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

    public static Usu_Usuario Select(int id)
    {
        try
        {
            Usu_Usuario objTipo = null;
            IDbConnection objConexao;
            IDbCommand objCommand;
            IDataReader objDataReader;
            string sql = "SELECT * FROM usu_usuario WHERE usu_codigo = ?usu_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?usu_codigo", id));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                objTipo = new Usu_Usuario();
                objTipo.Usu_codigo = Convert.ToInt32(objDataReader["usu_codigo"]);
                objTipo.Usu_login = Convert.ToInt32(objDataReader["usu_login"]);
                objTipo.Usu_senha = Convert.ToString(objDataReader["usu_senha"]);
                objTipo.Usu_status = Convert.ToInt32(objDataReader["usu_status"]);
                objTipo.Usu_data_cadastro = Convert.ToDateTime(objDataReader["usu_data_cadastro"]);
                objTipo.Usu_data_acesso = Convert.ToDateTime(objDataReader["usu_data_acesso"]);
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
        string sql = "SELECT * FROM usu_usuario ORDER BY usu_codigo";
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;
    }

    public Usu_Usuario SelecionarPorEmail(string email)
    {
        Usu_Usuario objUsuario = null;
        try
        {
            IDbConnection objConexao;
            IDbCommand objComando;
            IDataReader objDataReader;

            objConexao = Mapped.Connection();
            objComando = Mapped.Command("select * from usu_usuario inner join pes_pessoa using(pes_codigo) where pes_email=?pes_email;", objConexao);
            objComando.Parameters.Add(Mapped.Parameter("?pes_email", email));
            objDataReader = objComando.ExecuteReader();

            while (objDataReader.Read())
            {
                objUsuario = new Usu_Usuario();
                objUsuario.Usu_codigo = Convert.ToInt32(objDataReader["usu_codigo"]);
                objUsuario.Usu_senha = objDataReader["usu_senha"].ToString();
                objUsuario.Usu_login = Convert.ToInt32(objDataReader["usu_login"]);
                objUsuario.Pes_codigo = Pes_PessoaDB.Select(Convert.ToInt32(objDataReader["pes_codigo"].ToString()));
                objUsuario.Usu_status = Convert.ToInt32(objDataReader["usu_status"]);
                if (objDataReader["usu_data_acesso"] == DBNull.Value)
                    objUsuario.Usu_data_acesso = null;
                else
                    objUsuario.Usu_data_acesso = Convert.ToDateTime(objDataReader["usu_data_acesso"]);
            }
            objDataReader.Close();
            objConexao.Close();
            objComando.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return objUsuario;
        }
        catch (Exception e)
        {
            return null;
        }
    }
    public Usu_Usuario SelecionarPorLogin(Usu_Usuario usuario)
    {
        Usu_Usuario objUsuario = null;
        try
        {
            IDbConnection objConexao;
            IDbCommand objComando;
            IDataReader objDataReader;

            objConexao = Mapped.Connection();
            objComando = Mapped.Command("select * from usu_usuario where usu_login=?usu_login and usu_senha=?usu_senha;", objConexao);
            objComando.Parameters.Add(Mapped.Parameter("?usu_login", usuario.Usu_login));
            objComando.Parameters.Add(Mapped.Parameter("?usu_senha", usuario.Usu_senha));
            objDataReader = objComando.ExecuteReader();

            while (objDataReader.Read())
            {
                objUsuario = new Usu_Usuario();
                int pes = Convert.ToInt32(objDataReader["pes_codigo"].ToString());
                objUsuario.Usu_codigo = Convert.ToInt32(objDataReader["usu_codigo"]);
                objUsuario.Usu_senha = objDataReader["usu_senha"].ToString();
                objUsuario.Usu_login = Convert.ToInt32(objDataReader["usu_login"]);
                objUsuario.Pes_codigo = Pes_PessoaDB.Select(Convert.ToInt32(objDataReader["pes_codigo"].ToString()));
                objUsuario.Usu_status = Convert.ToInt32(objDataReader["usu_status"]);
                if (objDataReader["usu_data_acesso"] == DBNull.Value)
                    objUsuario.Usu_data_acesso = null;
                else
                    objUsuario.Usu_data_acesso = Convert.ToDateTime(objDataReader["usu_data_acesso"]);
            }
            objDataReader.Close();
            objConexao.Close();
            objComando.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return objUsuario;
        }
        catch (Exception e)
        {
            return null;
        }
    }
    public static int UpdateSenha(Usu_Usuario usuario)
    {
        int retorno = 0;
        try
        {
            IDbConnection objConexao;
            IDbCommand objComando;
            string sql = "UPDATE usu_usuario SET usu_senha = ?usu_senha, usu_data_acesso=now() WHERE usu_codigo = ?usu_codigo;";
            objConexao = Mapped.Connection();
            objComando = Mapped.Command(sql, objConexao);
            objComando.Parameters.Add(Mapped.Parameter("?usu_senha", Sam.Funcoes.Funcoes.HashCriptografia(usuario.Usu_senha, "SHA512")));
            objComando.Parameters.Add(Mapped.Parameter("?usu_codigo", usuario.Usu_codigo));
            objComando.ExecuteNonQuery();
            objConexao.Close();
            objComando.Dispose();
            objConexao.Dispose();
        }
        catch (Exception)
        {
            retorno = -2;
        }
        return retorno;
    }
    public static int UpdateDataAcesso(Usu_Usuario usuario)
    {
        int retorno = 0;
        try
        {
            IDbConnection objConexao;
            IDbCommand objComando;
            string sql = "UPDATE usu_usuario SET usu_data_acesso = ?usu_data_acesso WHERE usu_codigo = ?usu_codigo";
            objConexao = Mapped.Connection();
            objComando = Mapped.Command(sql, objConexao);
            objComando.Parameters.Add(Mapped.Parameter("?usu_data_acesso", DateTime.Now));
            objComando.Parameters.Add(Mapped.Parameter("?usu_codigo", usuario.Usu_codigo));
            objComando.ExecuteNonQuery();
            objConexao.Close();
            objComando.Dispose();
            objConexao.Dispose();
        }
        catch (Exception)
        {
            retorno = -2;
        }
        return retorno;
    }
}