using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace QuesGen
{
    public partial class batch_reg : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["qusmaster"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               // SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=qus;User ID=sa;Password=admin123");

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

            if (!IsPostBack)
            {
               // SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=qus;User ID=sa;Password=admin123");

                con.Open();
                string com = "Select course_id,course_name from tbl_course";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                ddlco.DataSource = dt;
                ddlco.DataTextField = "course_name";
                ddlco.DataValueField = "course_id";
                ddlco.DataBind();

                con.Close();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
           // SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=qus;User ID=sa;Password=admin123");
            con.Open();
            string sql = "insert into tbl_batch (dept_id,course_id,scheme_id,batch_name) values('" + ddldept.SelectedItem.Value + "','" + ddlcourse.SelectedItem.Value + "','" + ddlscheme.SelectedItem.Value + "','" + txtbatch.Text.Trim() + "')";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();

            txtbatch.Text = "";
            ddldept.ClearSelection();
            ddlcourse.ClearSelection();
            ddlscheme.ClearSelection();

            Response.Redirect("batch_reg.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           // SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=qus;User ID=sa;Password=admin123");
            con.Open();


            //string com = " SELECT tbl_batch.course_name,tbl_course.dept_name,tbl_batch.scheme_name,tbl_batch.batch_name FROM tbl_batch INNER JOIN tbl_course ON tbl_batch.dept_name=tbl_course.dept_name";

            string com = " SELECT e1.dept_name, e2.course_name, e3.scheme_name, e4.batch_name from tbl_dept e1, tbl_course e2, tbl_scheme e3, tbl_batch e4 where e1.dept_id= e2.dept_id and e2.dept_id=e3.dept_id and e3.dept_id= e4.dept_id and e2.course_id ='" + ddlco.SelectedValue + "' ";

            //string com = " SELECT dept_id,course_id,scheme_id,batch_name from tbl_batch where course_id ='" + ddlco.SelectedValue + "' ";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            gvbatch.DataSource = dt;
            gvbatch.DataBind();
            // this.Button2.Visible = true;
            con.Close();
        }

        protected void ddldept_SelectedIndexChanged(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=qus;User ID=sa;Password=admin123");

            con.Open();
            string com = "Select course_name,course_id from tbl_course where dept_id='" + ddldept.SelectedValue + "' ";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            ddlcourse.DataSource = dt;
            ddlcourse.DataTextField = "course_name";
            ddlcourse.DataValueField = "course_id";
            ddlcourse.DataBind();

            com = "Select scheme_id,scheme_name from tbl_scheme where dept_id='" + ddldept.SelectedValue + "' ";
            adpt = new SqlDataAdapter(com, con);
            dt = new DataTable();
            adpt.Fill(dt);
            ddlscheme.DataSource = dt;
            ddlscheme.DataTextField = "scheme_name";
            ddlscheme.DataValueField = "scheme_id";
            ddlscheme.DataBind();
            con.Close();
            
        }
    }
}