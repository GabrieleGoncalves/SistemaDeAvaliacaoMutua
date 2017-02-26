using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net;

/// <summary>
/// Summary description for Email
/// </summary>
public class Email
{
    public static string EnviarEmail(string remetente, string emailDestinatario, string assunto, string corpomsg)
    {
        //Cria o endereço de email do remetente
        MailAddress de = new MailAddress(remetente);
        //Cria o endereço de email do destinatário
        MailAddress para = new MailAddress(emailDestinatario);
        MailMessage mensagem = new MailMessage (de, para);

        mensagem.IsBodyHtml = true;
        
        //Assunto do email
        mensagem.Subject = assunto;
        
        //Conteúdo do Email
        mensagem.Body = corpomsg;
        
        //Prioridade do email;
        mensagem.Priority = MailPriority.Normal;

        //Anexos
        //mensagem.Attachments.Add (new Attachment("c:\arquivos\arquivo.doc"));
        
        //Com Cópia
        //mensagem.CC.Add(new MailAddress(""));
        
        //Com Cópia Oculta
        //mensagem.Bcc.Add(new MailAddress(""));
        
        //Cria o objeto que envia o e-mail
        SmtpClient cliente = new SmtpClient();
        
        /*cliente.Port;
        cliente.Host;
        cliente.Credentials = new NetworkCredential();*/
        
        try
        {
            //Envia o email
            cliente.Send(mensagem);
            return "E-mail enviado com sucesso";
        }

        catch (Exception e) 
        {
            return "Erro ao enviar e-mail";
        }
    }
}