using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace sample_internal
{
    public partial class add_batch_new : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                view_dept_dropdown();

            }
            ddl_course.Items.Insert(0, new ListItem("--Select Course--", "0"));
            ddl_scheme.Items.Insert(0, new ListItem("--Select Scheme--", "0"));
            viewgrid();
        }

        public void view_dept_dropdown()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin123");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_department ", con);     //starting code of Department dropdown
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_dept.DataSource = dt;
            dt.DefaultView.Sort = "dept_name";  //to sort dropdown values
            ddl_dept.DataTextField = "dept_name"; //to display department name
            ddl_dept.DataValueField = "dept_id";
            ddl_dept.DataBind();
            ddl_dept.Items.Insert(0, new ListItem("--Select Department-", "0"));

        }
        public void view_course_dropdown()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin123");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_course where dept_id='" + ddl_dept.SelectedItem.Value + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_course.DataSource = dt;
            ddl_course.Items.Insert(0, new ListItem("--Select Course--", "0"));
            dt.DefaultView.Sort = "course_name";  //to sort dropdown values
            ddl_course.DataTextField = "course_name"; //to display department name
            ddl_course.DataValueField = "course_id";
            ddl_course.DataBind();
            ddl_course.Items.Insert(0, new ListItem("--Select Course--", "0"));
        }
        public void view_scheme_dropdown()
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin123");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_scheme where course_id='" + ddl_course.SelectedItem.Value + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_scheme.DataSource = dt;
            ddl_scheme.Items.Insert(0, new ListItem("--Select Scheme--", "0"));
            dt.DefaultView.Sort = "scheme_name";  //to sort dropdown values
            ddl_scheme.DataTextField = "scheme_name"; //to display department name
            ddl_scheme.DataValueField = "scheme_id";
            ddl_scheme.DataBind();
            ddl_scheme.Items.Insert(0, new ListItem("--Select Scheme--", "0"));
        }
        public void viewgrid() //course grid function 
        {

            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin123");
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT tbl_department.dept_name as Department, tbl_course.course_name as Course,tbl_scheme.scheme_name as Scheme,tbl_batch.batch_name as Batch FROM tbl_department,tbl_course,tbl_scheme,tbl_batch WHERE  tbl_department.dept_id=tbl_course.dept_id and tbl_course.course_id=tbl_scheme.course_id and tbl_scheme.scheme_id=tbl_batch.scheme_id", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cmd.ExecuteNonQuery();
            GridView_batch.DataSource = dt;
            GridView_batch.DataBind();
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin123");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_batch where scheme_id='" + ddl_scheme.SelectedItem.Value + "' and batch_name='" + txt_batch.Text + "' ", con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script  >alert('Already Exist')</script>");

            }
            else
            {

                string sql = "insert into [tbl_batch] (batch_name,scheme_id) values('" + txt_batch.Text + "','" + ddl_scheme.SelectedItem.Value + "')";
                SqlCommand cmd2 = new SqlCommand(sql, con);
                cmd2.ExecuteNonQuery();
                viewgrid();
                Response.Write("<script  >alert('Successfully Inserted')</script>");


            }
        }

        protected void ddl_dept_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin123");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_course where dept_id='" + ddl_dept.SelectedItem.Value + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_course.DataSource = dt;
            ddl_course.Items.Insert(0, new ListItem("--Select Course--", "0"));
            dt.DefaultView.Sort = "course_name";  //to sort dropdown values
            ddl_course.DataTextField = "course_name"; //to display department name
            ddl_course.DataValueField = "course_id";
            ddl_course.DataBind();
            ddl_course.Items.Insert(0, new ListItem("--Select Course--", "0"));
        }

        protected void ddl_course_SelectedIndexChanged1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin123");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_scheme where course_id='" + ddl_course.SelectedItem.Value + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_scheme.DataSource = dt;
            ddl_scheme.Items.Insert(0, new ListItem("--Select Scheme--", "0"));
            dt.DefaultView.Sort = "scheme_name";  //to sort dropdown values
            ddl_scheme.DataTextField = "scheme_name"; //to display department name
            ddl_scheme.DataValueField = "scheme_id";
            ddl_scheme.DataBind();
            ddl_scheme.Items.Insert(0, new ListItem("--Select Scheme--", "0"));
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txt_batch.Text = "";
            view_dept_dropdown();
            view_course_dropdown();
            view_scheme_dropdown();
        }
    }
}