using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Bkp_Backup
/// </summary>
public class Bkp_Backup
{
    private int _bkp_codigo;   
    private string _bkp_nome;    
    private string _bkp_diretorio;    
    private DateTime _bkp_data;

    public int Bkp_codigo
    {
        get { return _bkp_codigo; }
        set { _bkp_codigo = value; }
    }

    public string Bkp_nome
    {
        get { return _bkp_nome; }
        set { _bkp_nome = value; }
    }

    public string Bkp_diretorio
    {
        get { return _bkp_diretorio; }
        set { _bkp_diretorio = value; }
    }

    public DateTime Bkp_data
    {
        get { return _bkp_data; }
        set { _bkp_data = value; }
    }


}