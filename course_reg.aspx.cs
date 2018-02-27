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
    public partial class course_reg : System.Web.UI.Page
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
                string com = "Select dept_id,dept_name from tbl_dept";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                ddldep.DataSource = dt;
                ddldep.DataTextField = "dept_name";
                ddldep.DataValueField = "dept_id";
                ddldep.DataBind();

                con.Close();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=qus;User ID=sa;Password=admin123");
            con.Open();
            string sql = "insert into tbl_course (dept_id,course_code,course_name,sem) values('" + ddldept.SelectedItem.Value + "','" + txtcourse_code.Text.Trim() + "','" + txtcourse_name.Text.Trim() + "','" + txtsem.Text.Trim() + "')";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();

            txtcourse_code.Text = "";
            txtcourse_name.Text = "";
            ddldept.ClearSelection();

            Response.Redirect("course_reg.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           // SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=qus;User ID=sa;Password=admin123");
            con.Open();
            string com = "select tbl_dept.dept_name,tbl_course.course_code,tbl_course.course_name from tbl_dept INNER JOIN tbl_course ON tbl_dept.dept_id=tbl_course.dept_id;";

            //string com = "select tbl_dept.dept_name,tbl_course.course_code,tbl_course.course_name from tbl_dept,tbl_course";
            //string com = "SELECT dept_id,course_code,course_name from tbl_course";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            gvcourse.DataSource = dt;
            gvcourse.DataBind();
            // this.Button2.Visible = true;
            con.Close();
        }
    }
}