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
    public partial class add_course_new : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                view_dept_dropdown();


            }
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
            DropDownList1.DataSource = dt;
            dt.DefaultView.Sort = "dept_name";  //to sort dropdown values
            DropDownList1.DataTextField = "dept_name"; //to display department name
            DropDownList1.DataValueField = "dept_id";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("--Select Department-", "0"));

        }
        public void viewgrid() //course grid function 
        {

            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin123");
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT tbl_department.dept_name as Department, tbl_course.course_name as Course FROM tbl_department,tbl_course WHERE  tbl_department.dept_id=tbl_course.dept_id", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cmd.ExecuteNonQuery();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }






        protected void btn_add_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=college_management;User ID=sa;Password=admin123");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_course where dept_id='" + DropDownList1.SelectedItem.Value + "' and course_name='" + txt_c.Text + "' ", con);
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

                string sql = "insert into [tbl_course] (dept_id,course_name) values('" + DropDownList1.SelectedItem.Value + "','" + txt_c.Text.Trim() + "')";
                SqlCommand cmd2 = new SqlCommand(sql, con);
                cmd2.ExecuteNonQuery();
                viewgrid();
                Response.Write("<script  >alert('Successfully Inserted')</script>");
                viewgrid();
            }

        }
    }
}
       
   
