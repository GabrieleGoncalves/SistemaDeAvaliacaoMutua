using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for Per_pessoasDB
/// </summary>
public class Pes_PessoaDB
{
    public static int Insert(Pes_Pessoas pessoa)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "INSERT INTO pes_pessoa (pes_nome, pes_rg, pes_cpf, pes_telefone, pes_celular, pes_email, pes_data_nascimento, pes_rua, pes_numero, pes_cep, pes_bairro, pes_cidade, pes_estado, pes_ra, aud_pes_codigo) VALUES (?pes_nome, ?pes_rg, ?pes_cpf, ?pes_telefone, ?pes_celular, ?pes_email, ?pes_data_nascimento, ?pes_rua, ?pes_numero, ?pes_cep, ?pes_bairro, ?pes_cidade, ?pes_estado, ?pes_ra, ?aud_pes_codigo); select last_insert_id();";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?pes_nome", pessoa.Pes_Nome));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_rg", pessoa.Pes_Rg));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_ra", pessoa.Pes_Ra));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_cpf", pessoa.Pes_Cpf));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_telefone", pessoa.Pes_Telefone));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_celular", pessoa.Pes_Celular));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_email", pessoa.Pes_Email));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_data_nascimento", pessoa.Pes_Data));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_rua", pessoa.Pes_Rua));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_numero", pessoa.Pes_Numero));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_cep", pessoa.Pes_Cep));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_bairro", pessoa.Pes_Bairro));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_cidade", pessoa.Pes_Cidade));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_estado", pessoa.Pes_Estado));
            objCommand.Parameters.Add(Mapped.Parameter("?aud_pes_codigo", pessoa.Aud_pes_codigo));

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
  
  
    public static int Update(Pes_Pessoas pessoa)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "UPDATE pes_pessoa SET pes_nome = ?pes_nome, pes_rg = ?pes_rg, pes_cpf = ?pes_cpf, pes_telefone = ?pes_telefone, pes_celular = ?pes_celular, pes_email = ?pes_email, pes_data_nascimento = ?pes_data_nascimento, pes_rua = ?pes_rua, pes_numero = ?pes_numero, pes_cep = ?pes_cep, pes_bairro = ?pes_bairro, pes_cidade = ?pes_cidade, pes_estado = ?pes_estado, pes_ra = ?pes_ra, aud_pes_codigo = ?aud_pes_codigo WHERE pes_codigo = ?pes_codigo;";

            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?pes_nome", pessoa.Pes_Nome));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_rg", pessoa.Pes_Rg));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_ra", pessoa.Pes_Ra));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_cpf", pessoa.Pes_Cpf));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_telefone", pessoa.Pes_Telefone));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_celular", pessoa.Pes_Celular));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_email", pessoa.Pes_Email));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_data_nascimento", pessoa.Pes_Data));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_rua", pessoa.Pes_Rua));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_numero", pessoa.Pes_Numero));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_cep", pessoa.Pes_Cep));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_bairro", pessoa.Pes_Bairro));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_cidade", pessoa.Pes_Cidade));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_estado", pessoa.Pes_Estado));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_codigo", pessoa.Pes_Codigo));
            objCommand.Parameters.Add(Mapped.Parameter("?aud_pes_codigo", pessoa.Aud_pes_codigo));

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
            string sql = "DELETE FROM pes_pessoa WHERE pes_codigo = ?pes_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("pes_codigo", id));

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

    public static Pes_Pessoas Select(int id)
    {
        try
        {
            Pes_Pessoas objTipo = null;
            IDbConnection objConexao;
            IDbCommand objCommand;
            IDataReader objDataReader;
            string sql = "SELECT * FROM pes_pessoa WHERE pes_codigo = ?pes_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?pes_codigo", id));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                objTipo = new Pes_Pessoas();
                objTipo.Pes_Codigo = Convert.ToInt32(objDataReader["pes_codigo"]);
                objTipo.Pes_Nome = objDataReader["pes_nome"].ToString();
                objTipo.Pes_Rg = objDataReader["pes_rg"].ToString();
                objTipo.Pes_Ra = objDataReader["pes_ra"].ToString();
                objTipo.Pes_Cpf = objDataReader["pes_cpf"].ToString();
                objTipo.Pes_Telefone = objDataReader["pes_telefone"].ToString();
                objTipo.Pes_Celular = objDataReader["pes_celular"].ToString();
                objTipo.Pes_Email = objDataReader["pes_email"].ToString();
                objTipo.Pes_Data = Convert.ToDateTime(objDataReader["pes_data_nascimento"]);
                objTipo.Pes_Rua = objDataReader["pes_rua"].ToString();
                objTipo.Pes_Numero = objDataReader["pes_numero"].ToString();
                objTipo.Pes_Cep = objDataReader["pes_cep"].ToString();
                objTipo.Pes_Bairro = objDataReader["pes_bairro"].ToString();
                objTipo.Pes_Cidade = objDataReader["pes_cidade"].ToString();
                objTipo.Pes_Estado = objDataReader["pes_estado"].ToString();
                if (objDataReader["aud_pes_codigo"] != DBNull.Value)
                    objTipo.Aud_pes_codigo = Convert.ToInt32(objDataReader["aud_pes_codigo"]);
                else
                    objTipo.Aud_pes_codigo = 0;

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

    public static Pes_Pessoas SelectPESEQP(int id)
    {
        try
        {
            Pes_Pessoas objTipo = null;
            IDbConnection objConexao;
            IDbCommand objCommand;
            IDataReader objDataReader;
            string sql = "select p.pes_nome,p.pes_codigo from pes_pessoa p inner join usu_usuario u on p.pes_codigo = u.pes_codigo inner join equ_equipe_usuario e on u.usu_codigo = e.usu_codigo where e.eqp_codigo=?codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                objTipo = new Pes_Pessoas();
                objTipo.Pes_Codigo = Convert.ToInt32(objDataReader["pes_codigo"]);
                objTipo.Pes_Nome = objDataReader["pes_nome"].ToString();
                objTipo.Pes_Rg = objDataReader["pes_rg"].ToString();
                objTipo.Pes_Cpf = objDataReader["pes_cpf"].ToString();
                objTipo.Pes_Telefone = objDataReader["pes_telefone"].ToString();
                objTipo.Pes_Celular = objDataReader["pes_celular"].ToString();
                objTipo.Pes_Email = objDataReader["pes_email"].ToString();
                objTipo.Pes_Data = Convert.ToDateTime(objDataReader["pes_data_nascimento"]);
                objTipo.Pes_Rua = objDataReader["pes_rua"].ToString();
                objTipo.Pes_Numero = objDataReader["pes_numero"].ToString();
                objTipo.Pes_Cep = objDataReader["pes_cep"].ToString();
                objTipo.Pes_Bairro = objDataReader["pes_bairro"].ToString();
                objTipo.Pes_Cidade = objDataReader["pes_cidade"].ToString();
                objTipo.Pes_Estado = objDataReader["pes_estado"].ToString();

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
        string sql = "SELECT * FROM pes_pessoa ORDER BY pes_codigo";
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;
    }

    public static DataSet SelectEmail(string email)
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        string sql = "SELECT * FROM  USU_USUARIO USU INNER JOIN PES_PESSOA PES ON USU.PES_CODIGO = PES.PES_CODIGO INNER JOIN PRU_PERFIL_USUARIO PRU ON PRU.USU_CODIGO = USU.USU_CODIGO  WHERE PRU.PER_CODIGO = 1  AND pes.pes_email LIKE '%" + email + "%' ORDER BY pes_nome";
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
        string sql = "SELECT * FROM  USU_USUARIO USU INNER JOIN PES_PESSOA PES ON USU.PES_CODIGO = PES.PES_CODIGO INNER JOIN PRU_PERFIL_USUARIO PRU ON PRU.USU_CODIGO = USU.USU_CODIGO  WHERE PRU.PER_CODIGO = 1  AND pes.pes_nome LIKE '%" + nome + "%' ORDER BY pes_nome";
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;
    }

    public static DataSet SelectRa(string nome)
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        string sql = "SELECT * FROM  USU_USUARIO USU INNER JOIN PES_PESSOA PES ON USU.PES_CODIGO = PES.PES_CODIGO INNER JOIN PRU_PERFIL_USUARIO PRU ON PRU.USU_CODIGO = USU.USU_CODIGO  WHERE PRU.PER_CODIGO = 1  AND pes.pes_ra LIKE '%" + nome + "%' ORDER BY pes_nome";
        objConexao = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConexao);
        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objCommand.Dispose();
        objConexao.Dispose();
        return ds;
    }

    public static DataSet SelectAvaliador(int id)
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;
        string sql = "select pes.pes_nome,usu.usu_codigo from usu_usuario usu inner join pes_pessoa pes on usu.pes_codigo = pes.pes_codigo where usu.usu_codigo="+id;
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