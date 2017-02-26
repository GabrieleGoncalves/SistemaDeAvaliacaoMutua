using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for pes_pessoas
/// </summary>
public class Pes_Pessoas:Per_Perfil
{
    private int _pes_codigo;
    private int _aud_pes_codigo;

    public int Aud_pes_codigo
    {
        get { return _aud_pes_codigo; }
        set { _aud_pes_codigo = value; }
    }

    
    public int Pes_Codigo
    {
        get { return _pes_codigo; }
        set { _pes_codigo = value; }
    }
    private string _pes_nome;

    public string Pes_Nome
    {
        get { return _pes_nome; }
        set { _pes_nome = value; }
    }
    private string _pes_cpf;

    public string Pes_Cpf
    {
        get { return _pes_cpf; }
        set { _pes_cpf = value; }
    }
    private string _pes_telefone;

    public string Pes_Telefone
    {
        get { return _pes_telefone; }
        set { _pes_telefone = value; }
    }
    private string _pes_celular;

    public string Pes_Celular
    {
        get { return _pes_celular; }
        set { _pes_celular = value; }
    }
    private string _email;

    public string Pes_Email
    {
        get { return _email; }
        set { _email = value; }
    }
    private DateTime _pes_data_nascimento;

    public DateTime Pes_Data
    {
        get { return _pes_data_nascimento; }
        set { _pes_data_nascimento = value; }
    }
    private string _pes_rua;

    public string Pes_Rua
    {
        get { return _pes_rua; }
        set { _pes_rua = value; }
    }
    private string _pes_numero;

    public string Pes_Numero
    {
        get { return _pes_numero; }
        set { _pes_numero = value; }
    }
    private string _pes_cep;

    public string Pes_Cep
    {
        get { return _pes_cep; }
        set { _pes_cep = value; }
    }
    private string _pes_bairro;

    public string Pes_Bairro
    {
        get { return _pes_bairro; }
        set { _pes_bairro = value; }
    }
    private string _pes_cidade;

    public string Pes_Cidade
    {
        get { return _pes_cidade; }
        set { _pes_cidade = value; }
    }
    private string _pes_estado;

    public string Pes_Estado
    {
        get { return _pes_estado; }
        set { _pes_estado = value; }
    }

    public string _pes_rg;

    public string Pes_Rg
    {
        get { return _pes_rg; }
        set { _pes_rg = value; }
    }

    public string _pes_ra;

    public string Pes_Ra
    {
        get { return _pes_ra; }
        set { _pes_ra = value; }
    }

}