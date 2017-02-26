using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Equ_Equipe_Usuario
/// </summary>
public class Equ_Equipe_Usuario
{
    private Eqp_Equipe _eqp_codigo;
    private Usu_Usuario _usu_codigo;
    private int _equ_codigo;
    private int _aud_pes_codigo;

    public int Aud_pes_codigo
    {
        get { return _aud_pes_codigo; }
        set { _aud_pes_codigo = value; }
    }


    public int Equ_codigo
    {
        get { return _equ_codigo; }
        set { _equ_codigo = value; }
    }

    public global::Eqp_Equipe Eqp_codigo
    {
        get { return _eqp_codigo; }
        set { _eqp_codigo = value; }
    }
    public global::Usu_Usuario Usu_codigo
    {
        get { return _usu_codigo; }
        set { _usu_codigo = value; }
    }
}