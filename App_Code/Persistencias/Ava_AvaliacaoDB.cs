using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
/// <summary>
/// Summary description for Ava_AvaliacaoDB
/// </summary>
public class Ava_AvaliacaoDB
{
    public static int Insert(Ava_Avaliacao avaliacao)
    {
        int retorno = 1;

        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "INSERT INTO ava_avaliacao (ava_nome,ava_tipo,ava_status,ava_anonimo,ava_inicio,ava_termino,ava_descricao,usu_codigo) VALUES (?ava_nome,?ava_tipo,?ava_status,?ava_anonimo,?ava_inicio,?ava_termino,?ava_descricao,?usu_codigo); SELECT last_insert_id();";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?ava_nome", avaliacao.Ava_nome));
            objCommand.Parameters.Add(Mapped.Parameter("?ava_tipo", avaliacao.Ava_tipo));
            objCommand.Parameters.Add(Mapped.Parameter("?ava_status", avaliacao.Ava_status));
            objCommand.Parameters.Add(Mapped.Parameter("?ava_anonimo", avaliacao.Ava_anonimo));
            objCommand.Parameters.Add(Mapped.Parameter("?ava_inicio", avaliacao.Ava_Inicio));
            objCommand.Parameters.Add(Mapped.Parameter("?ava_termino", avaliacao.Ava_Termino));
            objCommand.Parameters.Add(Mapped.Parameter("?ava_descricao", avaliacao.Ava_descricao));
            objCommand.Parameters.Add(Mapped.Parameter("?usu_codigo", avaliacao.Usu_codigo.Usu_codigo));
            //objCommand.Parameters.Add(Mapped.Parameter("?aud_pes_codigo", avaliacao.Aud_pes_codigo));
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

    public static int Update(Ava_Avaliacao avaliacao)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "UPDATE ava_avaliacao SET ava_nome = ?ava_nome, ava_tipo = ?ava_tipo, ";
            sql += "ava_status = ?ava_status"; //aud_pes_codigo = ?aud_pes_codigo ";
            sql += "WHERE ava_codigo = ?ava_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?ava_nome", avaliacao.Ava_nome));
            objCommand.Parameters.Add(Mapped.Parameter("?ava_tipo", avaliacao.Ava_tipo));
            objCommand.Parameters.Add(Mapped.Parameter("?ava_status", avaliacao.Ava_status));
            objCommand.Parameters.Add(Mapped.Parameter("?ava_codigo", avaliacao.Ava_codigo));
            //objCommand.Parameters.Add(Mapped.Parameter("?aud_pes_codigo", avaliacao.Aud_pes_codigo));

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
            string sql = "DELETE FROM ava_avaliacao WHERE ava_codigo = ?ava_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("ava_codigo", id));

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

    public static Ava_Avaliacao Select(int id)
    {
        try
        {
            Ava_Avaliacao objTipo = null;
            IDbConnection objConexao;
            IDbCommand objCommand;
            IDataReader objDataReader;
            string sql = "SELECT * FROM ava_avaliacao WHERE ava_codigo = ?ava_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?ava_codigo", id));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                objTipo = new Ava_Avaliacao();
                objTipo.Ava_codigo = Convert.ToInt32(objDataReader["ava_codigo"]);
                objTipo.Ava_nome = objDataReader["ava_nome"].ToString();
                objTipo.Ava_tipo = objDataReader["ava_tipo"].ToString();
                objTipo.Ava_anonimo = Convert.ToInt32(objDataReader["ava_anonimo"]);
                //objTipo.Aud_pes_codigo = Convert.ToInt32(objDataReader["aud_pes_codigo"]);
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
        string sql = "SELECT * FROM ava_avaliacao ORDER BY ava_codigo";
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;
    }

    public static DataSet SelectAvaliacaoInativa(int id)
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        objConnection = Mapped.Connection();
        objCommand = Mapped.Command("SELECT * FROM ava_avaliacao a where a.ava_codigo in (SELECT ava_codigo FROM eqa_equipe_avaliacao e inner join equ_equipe_usuario a using(eqp_codigo) where usu_codigo in ("+id+")) and ava_status=0", objConnection);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConnection.Close();
        objCommand.Dispose();
        objConnection.Dispose();
        return ds;

    }

    public static DataSet SelectAvaliacao()
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        objConnection = Mapped.Connection();
        objCommand = Mapped.Command("SELECT ava_codigo,ava_nome,ava_tipo,ava_status FROM ava_avaliacao", objConnection);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConnection.Close();
        objCommand.Dispose();
        objConnection.Dispose();
        return ds;

    }

         public static DataSet SelectAvaliacaoAtivaAvaliador(int id)
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        objConnection = Mapped.Connection();
        objCommand = Mapped.Command("SELECT * FROM ava_avaliacao a where (a.ava_codigo in (SELECT ava_codigo FROM eqa_equipe_avaliacao e inner join equ_equipe_usuario a using(eqp_codigo) where usu_codigo in ("+id+")) or a.usu_codigo="+id+") and a.ava_status=1", objConnection);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConnection.Close();
        objCommand.Dispose();
        objConnection.Dispose();
        return ds;

    }

     public static DataSet SelectAvaliacaoInativaAvaliador(int id)
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        objConnection = Mapped.Connection();
        objCommand = Mapped.Command("SELECT * FROM ava_avaliacao a where (a.ava_codigo in (SELECT ava_codigo FROM eqa_equipe_avaliacao e inner join equ_equipe_usuario a using(eqp_codigo) where usu_codigo in ("+id+")) or a.usu_codigo="+id+") and a.ava_status=0", objConnection);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConnection.Close();
        objCommand.Dispose();
        objConnection.Dispose();
        return ds;

    }

    public static DataSet SelectAvaliacaoAtiva(int id)
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        objConnection = Mapped.Connection();
        objCommand = Mapped.Command("SELECT * FROM ava_avaliacao a where a.ava_codigo in (SELECT ava_codigo FROM eqa_equipe_avaliacao e inner join equ_equipe_usuario a using(eqp_codigo) where usu_codigo in (" + id + ")) and ava_status=1", objConnection);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConnection.Close();
        objCommand.Dispose();
        objConnection.Dispose();
        return ds;

    }

    public static int UpdateInativo(int id)
    {
        int errNumber = 0;
        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "update ava_avaliacao set ";
            sql += " ava_status=0";
            sql += " where ava_codigo=?ava_codigo; ";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?ava_codigo", id));
            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
        }
        catch (Exception ex)
        {
            errNumber = -2;
        }
        return errNumber;
    }

    public static int UpdateInativoautomatico()
    {
        int errNumber = 0;
        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "update ava_avaliacao set ava_status = 0 where ava_termino < now()";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
        }
        catch (Exception ex)
        {
            errNumber = -2;
        }
        return errNumber;
    }


    public static int UpdateAtivo(int id)
    {
        int errNumber = 0;
        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "update ava_avaliacao set ";
            sql += " ava_status=1";
            sql += " where ava_codigo=?ava_codigo; ";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?ava_codigo", id));
            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
        }
        catch (Exception ex)
        {
            errNumber = -2;
        }
        return errNumber;
    }

    public static DataSet SelectDescricao(string descricao)
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        string sql = "SELECT * FROM ava_avaliacao WHERE ava_descricao LIKE '%" + descricao + "%' ORDER BY ava_codigo";
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;
    }

    public static DataSet SelectNome(string nome)
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        string sql = "SELECT * FROM ava_avaliacao WHERE ava_nome LIKE '%" + nome + "%' ORDER BY ava_codigo";
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