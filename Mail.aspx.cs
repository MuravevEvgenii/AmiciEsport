using MailKit.Net.Smtp;
using MimeKit;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MailKit;
using System.Net.Mail;
using System.Windows.Forms;
using SmtpClient = System.Net.Mail.SmtpClient;

namespace AmiciEs
{
    public partial class Mail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [Obsolete]
        protected void btSend_Click(object sender, EventArgs e)
        {

            //MailMessage message = new MailMessage();
            ////SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            //message.From = new MailAddress(tbMail.Text);
            //// message.To.Add = tbKomu.Text;
            //// mail.To = new MailboxAddress("zhekamuravev@gmail.com");
            ////message.Subject = tbText.Text;
            //message.Body = TbText.Text;

            //using (MailKit.Net.Smtp.SmtpClient client = new MailKit.Net.Smtp.SmtpClient())
            //{
            //    client.Connect("smtp.gmail.com", 465, true); //либо использум порт 465
            //    client.Authenticate(tbMail.Text, tbPass.Text); //логин-пароль от аккаунта
            //    client.Send(message);

            //    client.Disconnect(true);

            //}


            MailMessage message = new MailMessage();
            SmtpClient smtp = new SmtpClient("smtp.gmail.com"); //Сервер почты
            message.From = new MailAddress(tbMail.Text); //От кого сообщение
            message.To.Add("zhekamuravev@gmail.com"); //Кому сообщение 
            message.Subject = ("Обратная связь." + TbTema.Text); //Тема
            message.Body = TbText.Text; //Текст

            //System.Net.Mail.Attachment attachment;
            //attachment = new System.Net.Mail.Attachment(FileUpload1.);
            //message.Attachments.Add(attachment);

            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential(tbMail.Text, tbPass.Text);
            smtp.EnableSsl = true;
            smtp.Send(message);
        }
    }
}