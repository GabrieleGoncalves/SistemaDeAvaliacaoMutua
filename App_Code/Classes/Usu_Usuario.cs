using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Usu_Usuario
/// </summary>
public class Usu_Usuario
{    
    private int _usu_codigo;
    private int _aud_pes_codigo;

    public int Aud_pes_codigo
    {
        get { return _aud_pes_codigo; }
        set { _aud_pes_codigo = value; }
    }

    public int Usu_codigo
    {
        get { return _usu_codigo; }
        set { _usu_codigo = value; }
    }
    private int _usu_login;

    public int Usu_login
    {
        get { return _usu_login; }
        set { _usu_login = value; }
    }
    private string _usu_senha;

    public string Usu_senha
    {
        get { return _usu_senha; }
        set { _usu_senha = value; }
    }
    private DateTime _usu_data_cadastro;

    public DateTime Usu_data_cadastro
    {
        get { return _usu_data_cadastro; }
        set { _usu_data_cadastro = value; }
    }
    private DateTime? _usu_data_acesso;

    public DateTime? Usu_data_acesso
    {
        get { return _usu_data_acesso; }
        set { _usu_data_acesso = value; }
    }
    private Pes_Pessoas _pes_codigo;

    public Pes_Pessoas Pes_codigo
    {
        get { return _pes_codigo; }
        set { _pes_codigo = value; }
    }

    private int usu_status;

    public int Usu_status
    {
        get { return usu_status; }
        set { usu_status = value; }
    }
}