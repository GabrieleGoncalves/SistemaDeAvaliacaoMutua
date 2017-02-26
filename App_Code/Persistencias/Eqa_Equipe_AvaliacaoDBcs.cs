using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
/// <summary>
/// Summary description for eqa_equipe_avaliacao
/// </summary>
public class Eqa_Equipe_AvaliacaoDB
{

    public static int Insert(Eqa_Equipe_Avaliacao eqp)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "INSERT INTO eqa_equipe_avaliacao (eqp_codigo, ava_codigo ";
            sql += ") VALUES ";
            sql += "(?eqp_codigo,?ava_codigo)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?eqp_codigo", eqp.Eqp_codigo.Eqp_codigo));
            objCommand.Parameters.Add(Mapped.Parameter("?ava_codigo", eqp.Ava_codigo.Ava_codigo));

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

    public static Eqa_Equipe_Avaliacao Select(int id, int id1, int id2)
    {
        try
        {
            Eqa_Equipe_Avaliacao objTipo = null;
            IDbConnection objConexao;
            IDbCommand objCommand;
            IDataReader objDataReader;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM eqa_equipe_avaliacao WHERE eqp_codigo = ?eqp_codigo and ava_codigo = ?ava_codigo and res_codigo=?res_codigo", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?eqp_codigo", id));
            objCommand.Parameters.Add(Mapped.Parameter("?ava_codigo", id1));
            objCommand.Parameters.Add(Mapped.Parameter("?res_codigo", id2));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                objTipo = new Eqa_Equipe_Avaliacao();
                objTipo.Eqp_codigo.Eqp_codigo = Convert.ToInt32(objDataReader["eqp_codigo"]);
                objTipo.Ava_codigo.Ava_codigo = Convert.ToInt32(objDataReader["ava_codigo"]);
                objTipo.Res_codigo.Res_codigo = Convert.ToInt32(objDataReader["res_codigo"]);
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

    public static DataSet teste(int id)
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        string sql = "SELECT eqp_codigo FROM eqa_equipe_avaliacao where ava_codigo =" + id;
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;
    }


    public static DataSet SELECTteste(int id)
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        string sql = "SELECT * FROM EQA_EQUIPE_AVALIACAO EQA INNER JOIN EQP_EQUIPE EQP ON EQP.EQP_CODIGO = EQA.EQP_CODIGO INNER JOIN EQU_EQUIPE_USUARIO EQU ON EQU.EQP_CODIGO = EQP.EQP_CODIGO INNER JOIN USU_USUARIO USU ON EQU.USU_CODIGO = USU.USU_CODIGO INNER JOIN PES_PESSOA PES ON USU.PES_CODIGO = PES.PES_CODIGO where eqa.ava_codigo =" + id;
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
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command("SELECT * FROM eqa_equipe_avaliacao ORDER BY ava_codigo", objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;

    }
    public static DataSet SELECTPessoaAva(int id)
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        string sql = "select pes.pes_nome,usu.usu_codigo from pes_pessoa pes inner join usu_usuario usu on pes.pes_codigo = usu.pes_codigo inner join equ_equipe_usuario equ on equ.usu_codigo=usu.usu_codigo inner join eqa_equipe_avaliacao eqa on eqa.eqp_codigo = equ.eqp_codigo where eqa.ava_codigo=" + id;
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;
    }


    public static DataSet Select180participante(int id)
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command("select*from pes_pessoa pes inner join usu_usuario usu on pes.pes_codigo = usu.pes_codigo inner join pru_perfil_usuario pru on pru.usu_codigo = usu.usu_codigo inner join per_perfil per  on per.per_codigo = pru.per_codigo inner join equ_equipe_usuario equ on usu.usu_codigo=equ.usu_codigo inner join eqa_equipe_avaliacao eqa on equ.eqp_codigo = eqa.eqp_codigo  where per.per_codigo =1 and eqa.ava_codigo=" + id, objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;

    }

    public static DataSet Select180Avaliador(int id)
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command("select*from pes_pessoa pes inner join usu_usuario usu on pes.pes_codigo = usu.pes_codigo inner join pru_perfil_usuario pru on pru.usu_codigo = usu.usu_codigo inner join per_perfil per  on per.per_codigo = pru.per_codigo inner join equ_equipe_usuario equ on usu.usu_codigo=equ.usu_codigo inner join eqa_equipe_avaliacao eqa on equ.eqp_codigo = eqa.eqp_codigo  where per.per_codigo =2 and eqa.ava_codigo=" + id, objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;

    }

    public static DataSet SelectAvaliador2(int id)
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command("select * from ava_avaliacao ava inner join usu_usuario usu on usu.usu_codigo=ava.usu_codigo inner join pes_pessoa pes on pes.pes_codigo=usu.pes_codigo where ava_codigo="+id, objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;

    }
}