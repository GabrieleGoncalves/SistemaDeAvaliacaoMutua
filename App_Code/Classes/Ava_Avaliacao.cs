using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Ava_Avaliacao
/// </summary>
public class Ava_Avaliacao
{
    private int _ava_codigo;
    private string _ava_nome;
    private string _ava_tipo;
    private int _ava_status;
    private int _ava_anonimo;
    private DateTime _ava_inicio;
    private DateTime _ava_termino;
    private string _ava_descricao;
    private Usu_Usuario _usu_codigo;
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

    public string Ava_descricao
    {
        get { return _ava_descricao; }
        set { _ava_descricao = value; }
    }

    public DateTime Ava_Inicio
    {
        get { return _ava_inicio; }
        set { _ava_inicio = value; }
    }

    public DateTime Ava_Termino
    {
        get { return _ava_termino; }
        set { _ava_termino = value; }
    }

    public string Ava_tipo
    {
        get { return _ava_tipo; }
        set { _ava_tipo = value; }
    }

    public string Ava_nome
    {
        get { return _ava_nome; }
        set { _ava_nome = value; }
    }

    public int Ava_codigo
    {
        get { return _ava_codigo; }
        set { _ava_codigo = value; }
    }

    public int Ava_status
    {
        get { return _ava_status; }
        set { _ava_status = value; }
    }

    public int Ava_anonimo
    {
        get { return _ava_anonimo; }
        set { _ava_anonimo = value; }
    }
}