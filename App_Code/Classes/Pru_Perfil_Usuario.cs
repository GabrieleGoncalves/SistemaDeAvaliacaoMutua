using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Pru_Perfil_Usuario
/// </summary>
public class Pru_Perfil_Usuario
{
    private Usu_Usuario _usu_codigo;
    private int _aud_pes_codigo;

    public int Aud_pes_codigo
    {
        get { return _aud_pes_codigo; }
        set { _aud_pes_codigo = value; }
    }

    public Usu_Usuario Usu_codigo
    {
        get { return _usu_codigo; }
        set { _usu_codigo = value; }
    }

    private Per_Perfil _per_codigo;

    public Per_Perfil Per_codigo
    {
        get { return _per_codigo; }
        set { _per_codigo = value; }
    }
}