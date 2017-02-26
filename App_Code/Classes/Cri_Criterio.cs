using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Cri_Criterio
/// </summary>
public class Cri_Criterio
{
    private int _cri_codigo;
    private string _cri_descricao;
    private int _aud_pes_codigo;

    public int Aud_pes_codigo
    {
        get { return _aud_pes_codigo; }
        set { _aud_pes_codigo = value; }
    }
       

    public int Cri_codigo
    {
        get { return _cri_codigo; }
        set { _cri_codigo = value; }
    }

    public string Cri_descricao
    {
        get { return _cri_descricao; }
        set { _cri_descricao = value; }
    }
}