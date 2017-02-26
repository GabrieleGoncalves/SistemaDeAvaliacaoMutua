using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Cra_Criterio_Avaliacao
/// </summary>
public class Cra_Criterio_Avaliacao
{
    private Ava_Avaliacao _ava_codigo;
    private Cri_Criterio _cri_codigo;
    private double _cra_peso;
    private int _cra_codigo;
    private int _aud_pes_codigo;

    public int Aud_pes_codigo
    {
        get { return _aud_pes_codigo; }
        set { _aud_pes_codigo = value; }
    }

    public int Cra_codigo
    {
        get { return _cra_codigo; }
        set { _cra_codigo = value; }
    }

    public global::Ava_Avaliacao Ava_codigo
    {
        get { return _ava_codigo; }
        set { _ava_codigo = value; }
    }

    public global::Cri_Criterio Cri_Codigo
    {
        get { return _cri_codigo; }
        set { _cri_codigo = value; }
    }

    public double Cra_peso
    {
        get { return _cra_peso; }
        set { _cra_peso = value; }
    }
}