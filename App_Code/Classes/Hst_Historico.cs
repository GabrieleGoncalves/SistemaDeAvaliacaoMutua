using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Hst_Historico
/// </summary>
public class Hst_Historico:Usu_Usuario
{
    private int hst_codigo;
    private int aud_pes_codigo;



    public int Aud_pes_codigo1
    {
        get { return aud_pes_codigo; }
        set { aud_pes_codigo = value; }
    }

    public int Hst_codigo
    {
        get { return hst_codigo; }
        set { hst_codigo = value; }
    }
    private string hst_atividade;

    public string Hst_atividade
    {
        get { return hst_atividade; }
        set { hst_atividade = value; }
    }
    private DateTime? hst_data;

    public DateTime? Hst_data
    {
        get { return hst_data; }
        set { hst_data = value; }
    }
    //private Usu_Usuario usu_codigo;

    //public Usu_Usuario Usu_codigo
    //{
    //    get { return usu_codigo; }
    //    set { usu_codigo = value; }
    //}
}