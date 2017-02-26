using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
/// <summary>
/// Summary description for Cra_Criterio_AvaliacaoDB
/// </summary>
public class Cra_Criterio_AvaliacaoDB
{
    public static int Insert(Cra_Criterio_Avaliacao criterio)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "INSERT INTO cra_criterio_avaliacao (cra_peso,ava_codigo,cri_codigo) VALUES (?cra_peso,?ava_codigo,?cri_codigo)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?cra_peso", criterio.Cra_peso));
            objCommand.Parameters.Add(Mapped.Parameter("?cri_codigo", criterio.Cri_Codigo.Cri_codigo));
            objCommand.Parameters.Add(Mapped.Parameter("?ava_codigo", criterio.Ava_codigo.Ava_codigo));
            //objCommand.Parameters.Add(Mapped.Parameter("?aud_pes_codigo", criterio.Aud_pes_codigo));

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

    public static int Update(Cri_Criterio criterio, int id, int id1)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "UPDATE cra_criterio_avaliacao SET cra_peso = ?cra_peso";
            sql += "WHERE cri_codigo = ?cri_codigo and ava_codigo=?ava_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?cra_peso", criterio.Cri_descricao));
            objCommand.Parameters.Add(Mapped.Parameter("?cri_codigo", id));
            objCommand.Parameters.Add(Mapped.Parameter("?ava_codigo", id1));
            //objCommand.Parameters.Add(Mapped.Parameter("?aud_pes_codigo", criterio.Aud_pes_codigo));

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



    public static int Delete(int id, int id1)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "DELETE FROM cra_criterio_avaliacao WHERE cri_codigo = ?cri_codigo and ava_codigo=?ava_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?cri_codigo", id));
            objCommand.Parameters.Add(Mapped.Parameter("?ava_codigo", id1));
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

    public static Cra_Criterio_Avaliacao Select(int id, int id1)
    {
        try
        {
            Cra_Criterio_Avaliacao objTipo = null;
            IDbConnection objConexao;
            IDbCommand objCommand;
            IDataReader objDataReader;
            string sql = "SELECT * FROM cra_criterio_avaliacao WHERE cri_codigo = ?cri_codigo and ava_codigo=?ava_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?cri_codigo", id));
            objCommand.Parameters.Add(Mapped.Parameter("?ava_codigo", id1));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                objTipo = new Cra_Criterio_Avaliacao();
                objTipo.Cri_Codigo.Cri_codigo = Convert.ToInt32(objDataReader["cri_codigo"]);
                objTipo.Ava_codigo.Ava_codigo = Convert.ToInt32(objDataReader["ava_codigo"]);
                objTipo.Cra_peso = Convert.ToDouble(objDataReader["cra_peso"]);
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


    public static DataSet teste(int id)
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        string sql = "SELECT cri_codigo FROM cra_criterio_avaliacao where ava_codigo =" + id;
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
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
        string sql = "SELECT * FROM cra_criterio_avaliacao ORDER BY cri_codigo";
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;
    }

    public static DataSet SelectQtd(int id)
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        string sql = "SELECT * FROM cra_criterio_avaliacao cra inner join cri_criterio cri on cri.cri_codigo = cra.cri_codigo where ava_codigo=" + id;
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;
    }


    public static DataSet SelectMedia(int codAva, int usucod)
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        string sql = "select cra.cra_peso, res.res_nota from cra_criterio_avaliacao cra inner join res_resposta res on cra.cri_codigo = res.cri_codigo where cra.ava_codigo =" + codAva + " and res.ava_codigo=" + codAva + " and res.usu_codigo=" + usucod;
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