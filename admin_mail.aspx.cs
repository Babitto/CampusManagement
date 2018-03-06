using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace QuesGen
{
    public partial class admin_mail : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["qusmaster"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con.Open();
                string com = "Select dept_id,dept_name from tbl_dept";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                ddldept.DataSource = dt;
                ddldept.DataTextField = "dept_name";
                ddldept.DataValueField = "dept_id";
                ddldept.DataBind();

                con.Close();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            con.Open();
            //string com = "Select email from tbl_staff";
            //SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            //DataTable dt = new DataTable();
            //adpt.Fill(dt);
            String sql = "Select email,type from tbl_staff where type='STAFF' and dept_id='" + ddldept.SelectedValue + "'";
            SqlDataReader rdr = null;
            SqlCommand cmd = new SqlCommand(sql, con);
            rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    string email = (string)rdr["email"];

                    try
                    {

                        MailMessage mail = new MailMessage();
                        SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                        mail.From = new MailAddress("cmsystem.saintgits@gmail.com");
                        mail.To.Add("cmsystem.saintgits@gmail.com");
                        mail.To.Add(email);
                        mail.Subject = txtsub.Text.Trim();
                        mail.Body = txtmessage.Text.Trim();
                        mail.IsBodyHtml = true;
                        SmtpServer.Port = 587;
                        SmtpServer.Credentials = new System.Net.NetworkCredential("cmsystem.saintgits@gmail.com", "cmsystem007");
                        SmtpServer.EnableSsl = true;
                        SmtpServer.Send(mail);
                    }

                    catch (Exception exp)
                    {
                        throw exp;
                    }
                }
      //          String email = row["email"].ToString;

      
          

        }
    }
}