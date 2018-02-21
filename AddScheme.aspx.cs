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
    public partial class AddScheme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
            }

            
                    }

        protected void ddlDept_SelectedIndexChanged(object sender, EventArgs e)
        {

                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=db_asistencia;User ID=sa;Password=admin08");
                con.Open();
                string com = "Select course_id,course_name,dept_id from tbl_course where dept_id = '"+ ddlDept.SelectedValue +"' ";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                ddlCourse.DataSource = dt;
                ddlCourse.DataTextField = "course_name";
                ddlCourse.DataValueField = "course_id";
                ddlCourse.DataBind();
                con.Close();
            
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=db_asistencia;User ID=sa;Password=admin08");
            con.Open();
            string sql1 = "insert into tbl_scheme (scheme_name,course_id,active) values('" + txtScheme.Text +"','" + ddlCourse.SelectedValue + "',1)";
            SqlCommand cmd1 = new SqlCommand(sql1, con);
            cmd1.ExecuteNonQuery();

        }

        }

        
    }



