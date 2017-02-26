using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Res_Resposta
/// </summary>
public class Res_Resposta
{
    private int _res_codigo;
    private double _res_nota;
    private Usu_Usuario _usu_codigo;
    private Usu_Usuario _usu_codigo1;
    private Ava_Avaliacao _ava_codigo;
    private Cri_Criterio _cri_codigo;
    private int _aud_pes_codigo;

    public int Aud_pes_codigo
    {
        get { return _aud_pes_codigo; }
        set { _aud_pes_codigo = value; }
    }

    public global::Usu_Usuario Usu_codigo
    {
        get { return _usu_codigo; }
        set { _usu_codigo = value; }
    }

    public global::Usu_Usuario Usu_codigo1
    {
        get { return _usu_codigo1; }
        set { _usu_codigo1 = value; }
    }

    public global::Ava_Avaliacao Ava_codigo
    {
        get { return _ava_codigo; }
        set { _ava_codigo = value; }
    }

    public global::Cri_Criterio Cri_codigo
    {
        get { return _cri_codigo; }
        set { _cri_codigo = value; }
    }


    public int Res_codigo
    {
        get { return _res_codigo; }
        set { _res_codigo = value; }
    }

    public double Res_nota
    {
        get { return _res_nota; }
        set { _res_nota = value; }
    }
}