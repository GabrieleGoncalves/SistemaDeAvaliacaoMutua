using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Eqa_Equipe_Avaliaca
/// </summary>
public class Eqa_Equipe_Avaliacao
{
    private Ava_Avaliacao _ava_codigo;
    private Eqp_Equipe _eqp_codigo;
    private Res_Resposta _res_codigo;
    private int _eqa_codigo;
    private int _aud_pes_codigo;

    public int Aud_pes_codigo
    {
        get { return _aud_pes_codigo; }
        set { _aud_pes_codigo = value; }
    }

    
    public int Eqa_codigo
    {
        get { return _eqa_codigo; }
        set { _eqa_codigo = value; }
    }

    public global::Ava_Avaliacao Ava_codigo
    {
        get { return _ava_codigo; }
        set { _ava_codigo = value; }
    }

    public global::Eqp_Equipe Eqp_codigo
    {
        get { return _eqp_codigo; }
        set { _eqp_codigo = value; }
    }

    public global::Res_Resposta Res_codigo
    {
        get { return _res_codigo; }
        set { _res_codigo = value; }
    }
}