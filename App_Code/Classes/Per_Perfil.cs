using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Per_Perfil
/// </summary>
public class Per_Perfil
{
    private int _per_codigo;
    private int _aud_pes_codigo;

    public int Aud_pes_codigo
    {
        get { return _aud_pes_codigo; }
        set { _aud_pes_codigo = value; }
    }

    
    public int Per_codigo
    {
        get { return _per_codigo; }
        set { _per_codigo = value; }
    }
    private string _per_descricao;

    public string Per_descricao
    {
        get { return _per_descricao; }
        set { _per_descricao = value; }
    }
}