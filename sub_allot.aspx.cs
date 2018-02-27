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
    public partial class sub_allot : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["qusmaster"].ConnectionString);
        int i;
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
        }

        protected void ddldept_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            string com = "Select course_name,course_id from tbl_course where dept_id='" + ddldept.SelectedValue + "' ";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            ddlcourse.DataSource = dt;
            ddlcourse.DataTextField = "course_name";
            ddlcourse.DataValueField = "course_id";
            ddlcourse.DataBind();

            ddlcourse.Items.Insert(0, new ListItem("Select", "NA")); 


            com = "Select staff_name,staff_id from tbl_staff where dept_id='" + ddldept.SelectedValue + "' ";
            adpt = new SqlDataAdapter(com, con);
            dt = new DataTable();
            adpt.Fill(dt);
            ddlstaff.DataSource = dt;
            ddlstaff.DataTextField = "staff_name";
            ddlstaff.DataValueField = "staff_id";
            ddlstaff.DataBind();
            con.Close();
        }

        protected void ddlcourse_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            string com = "Select sub_name,sub_id from tbl_sub where course_id='" + ddlcourse.SelectedValue + "' ";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            ddlsub.DataSource = dt;
            ddlsub.DataTextField = "sub_name";
            ddlsub.DataValueField = "sub_id";
            ddlsub.DataBind();
            

            //SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=qus;User ID=sa;Password=admin123");

            
             com = "Select batch_name,batch_id from tbl_batch where course_id='" + ddlcourse.SelectedValue + "' ";
             adpt = new SqlDataAdapter(com, con);
             dt = new DataTable();
            adpt.Fill(dt);
            ddlbatch.DataSource = dt;
            ddlbatch.DataTextField = "batch_name";
            ddlbatch.DataValueField = "batch_id";
            ddlbatch.DataBind();
            con.Close();


            com = "select sem from tbl_course where course_id='" + ddlcourse.SelectedValue + "' ";
             
             adpt = new SqlDataAdapter(com, con);
             dt = new DataTable();
            adpt.Fill(dt);
            int n = Convert.ToInt32(dt.Rows[0][0].ToString());
            ddlsem.Items.Clear();
            for (i = 1; i <= n; i++)
            {
                string g = Convert.ToString(i);
                ddlsem.Items.Add(new ListItem("Semester " + g, g));
            }
        }

  

   
    }
}