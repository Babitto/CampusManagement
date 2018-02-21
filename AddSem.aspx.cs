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
    public partial class AddSem : System.Web.UI.Page
    {
        public Boolean i;
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

                string com1 = "Select sem_id,sem_name from tbl_semester ";
                SqlDataAdapter adpt1 = new SqlDataAdapter(com1, con);
                DataTable dt1 = new DataTable();
                adpt1.Fill(dt1);
                GridAt.DataSource = dt1;
                GridAt.DataBind();
                con.Close();

            }

        }


        protected void ddlDept_SelectedIndexChanged(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=db_asistencia;User ID=sa;Password=admin08");

            con.Open();
            string com = "Select course_name,course_id from tbl_course where dept_id='" + ddlDept.SelectedValue + "' ";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            ddlCourse.DataSource = dt;
            ddlCourse.DataTextField = "course_name";
            ddlCourse.DataValueField = "course_id";
            ddlCourse.DataBind();
            con.Close();
        }

        protected void ddlCourse_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=db_asistencia;User ID=sa;Password=admin08");

            con.Open();
            string com = "Select scheme_name,scheme_id from tbl_scheme where course_id='" + ddlCourse.SelectedValue + "' ";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            ddlScheme.DataSource = dt;
            ddlScheme.DataTextField = "scheme_name";
            ddlScheme.DataValueField = "scheme_id";
            ddlScheme.DataBind();
            con.Close();

        }

        protected void ddlScheme_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=db_asistencia;User ID=sa;Password=admin08");

            con.Open();
            string com = "Select batch_name,batch_id from tbl_batch where scheme_id='" + ddlScheme.SelectedValue + "' ";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            ddlBatch.DataSource = dt;
            ddlBatch.DataTextField = "batch_name";
            ddlBatch.DataValueField = "batch_id";
            ddlBatch.DataBind();
            con.Close();

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            SqlConnection con1 = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=db_asistencia;User ID=sa;Password=admin08");
            con1.Open();
            string com = "Select batch_id from tbl_semester where sem_name= '"+ txtSem.Text+"' and batch_id ='"+ ddlBatch.SelectedValue+ "'";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con1);
            DataTable dt = new DataTable();
              adpt.Fill(dt);
              if(dt.Rows.Count >  0)
                 {
                  Response.Write("Already Exists");
                 }
              else
                 {
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=db_asistencia;User ID=sa;Password=admin08");
                con.Open();
                string sql = "insert into tbl_semester (sem_name,batch_id,active) values('" + txtSem.Text + "','" + ddlBatch.SelectedValue + "',1)";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.ExecuteNonQuery();
                 }
            }


        }

    

}




 

    


