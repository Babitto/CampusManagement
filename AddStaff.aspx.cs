using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Assistencia_AMS
{
    public partial class AddStaff : System.Web.UI.Page
    {
      public  string gender;
        string SD;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=db_asistencia;User ID=sa;Password=admin08");

                con.Open();
                string com = "Select dept_name,dept_id from tbl_department";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                ddlDept.DataSource = dt;
                ddlDept.DataTextField = "dept_name";
                ddlDept.DataValueField = "dept_id";
                ddlDept.DataBind();
                con.Close();
          
         
           
                string coms = "Select usertype,usertype_id from tbl_usertype";
                SqlDataAdapter adpts = new SqlDataAdapter(coms, con);
                DataTable dts = new DataTable();
                adpts.Fill(dts);
                ddluser.DataSource = dts;
                ddluser.DataTextField = "usertype";
                ddluser.DataValueField = "usertype_id";
                ddluser.DataBind();
                con.Close();
     
          
                string com1 = "Select typename from tbl_faculttype";
                SqlDataAdapter adpt1 = new SqlDataAdapter(com1, con);
                DataTable dt1 = new DataTable();
                adpt1.Fill(dt1);
                ddlfaculty.DataSource = dt1;
                ddlfaculty.DataTextField = "typename";
               // ddlfaculty.DataValueField = "typeid";
                ddlfaculty.DataBind();
                con.Close();
            }

         

        }

        protected void btnSave_Click(object sender, EventArgs e)
        { 
           

            if (txtpass.Text == txtconfirm.Text)
            {
                if (upld_photo.HasFile)
                {

                    upld_photo.PostedFile.SaveAs(Server.MapPath("~/Images/") + "/" + upld_photo.FileName);
                    SD ="~/ Images/"+upld_photo.FileName;

                    Response.Write(SD);

                  
                    if (male.Checked)
                    {
                        gender = "M";
                    }
                    else if(female.Checked)
                    {
                        gender = "F";
                    }
                    
                    
                   
                    
                    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=db_asistencia;User ID=sa;Password=admin08");
                    con.Open();
                    string sql = "insert into tbl_faculty (dept_id,faculty_name,usertype_id,typeid,username,passwords,active,email_id,image,Gender) values('" + ddlDept.SelectedValue + "','" + txtstaff.Text + "','" + ddluser.SelectedValue + "',1,'" + txtuname.Text + "','" + txtpass.Text + "',1,'" + txtmail.Text + "', '"+SD+"','"+gender+"')";
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.ExecuteNonQuery();

                }
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Password does not match";
            }
            
            
            
            

           /* sql = "insert into onlineapp values('" & txtid.Text & "','" & txtname.Text & "','" & txtadr.Text & "','" & txtphno.Text & "','" & txteid.Text & "','" & RadioButtonList1.SelectedItem.Text & "' ,'" & txtdur.Text & "','" & txtbank.Text & "','" & txtdob.Text & "','" & DropDownList1.SelectedItem.Text & "','" & RadioButtonList2.Text & "','" & txtamt.Text & "','not approved','" & SD & "')"

            Dim comm As New SqlCommand(sql, conn);

            comm.ExecuteNonQuery();
            conn.Close();*/

     
            }

        protected void txtstaff_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ddluser_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlfaculty_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txtmail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void male_CheckedChanged(object sender, EventArgs e)
        {

        }

               
            

        }

       

       

        
    }

