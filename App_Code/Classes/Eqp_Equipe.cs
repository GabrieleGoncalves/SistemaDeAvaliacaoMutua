using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Eqp_Equipe
/// </summary>
public class Eqp_Equipe
{
    private int _eqp_codigo;
    private string _eqp_nome;
    private string _eqp_descricao;
    private int _aud_pes_codigo;

    public int Aud_pes_codigo
    {
        get { return _aud_pes_codigo; }
        set { _aud_pes_codigo = value; }
    }


    public int Eqp_codigo
    {
        get { return _eqp_codigo; }
        set { _eqp_codigo = value; }
    }

    public string Eqp_nome
    {
        get { return _eqp_nome; }
        set { _eqp_nome = value; }
    }

    public string Eqp_descricao
    {
        get { return _eqp_descricao; }
        set { _eqp_descricao = value; }
    }
}