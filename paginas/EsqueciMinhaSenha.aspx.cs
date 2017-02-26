using Sam.Funcoes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_EsqueciMinhaSenha : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    public static string gerarSenha(int pTamanho)
    {
        char[] senha = new char[pTamanho];

        Random randomizer = new Random();

        for (int i = 0; i < pTamanho; i++)
        {
            // Índices (range de códigos da tabela ASCII).
            // 0: números -> 48 ~ 57; 
            // 1: maiúsculas -> 65 ~ 90; 
            // 2: minúsculas -> 97 ~ 122;

            // O método Next() da classe Random obtém um valor aleatório no range numérico que lhe é passado.
            // Esse "+1" é apenas para ilustrar que, num range (x, y),
            // o método Next() obtém valores MAIORES OU IGUAIS a x e MENORES que y.
            // Dessa forma é necessário adicionar 1 ao segundo parametro.
            int[] caracteresAleatorios = { randomizer.Next(48, 57 + 1), randomizer.Next(65, 90 + 1), randomizer.Next(97, 122 + 1) };

            // Exemplo do funcionamento do método next:
            // Para se obter um índice de 0 a 2, precisamos de um range 0 ~ 3.

            // O valor inteiro recebido é convertido em char, 
            // obtendo o caractere referente ao código decimal ASCII.
            senha[i] = (char)caracteresAleatorios[randomizer.Next(0, 3)];

        }

        // O array de char agora é transformado em uma string e então retornado.
        return new string(senha);
    }
    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        Usu_UsuarioDB usuDB = new Usu_UsuarioDB();
        Usu_Usuario usu = usuDB.SelecionarPorEmail(txtEmail.Text);
        if (usu != null)
        {
            string novasenha = gerarSenha(6);
            usu.Usu_senha = Funcoes.HashCriptografia(novasenha,"SHA512");
            usu.Usu_data_acesso = null;
            if (Usu_UsuarioDB.Update(usu) != -2)
            {
                Response.Write(Email.EnviarEmail("InterSAM <projetointersam@outlook.com>", txtEmail.Text, "Esqueceu a senha", "Senha redefinida<br><br>Usuário: "+usu.Usu_login +"<br>Senha: "+novasenha));
            }
            else
                Response.Write(@"<script language='javascript'>alert('Erro ao Enviar E-mail!');</script>");
        }
        else
            Response.Write(@"<script language='javascript'>alert('E-mail enviado com sucesso!');</script>");
        txtEmail.Text = "";
    }

    /// <summary>
    /// Gera uma senha alfanumérica aleatória, contendo letras maiúsculas, minúsculas e números.
    /// </summary>
    /// <param name="pTamanho">Tamanho da senha a ser gerada.</param>
    /// <returns>string -> senha gerada.</returns>
   
}