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
    public partial class dept_reg : System.Web.UI.Page
    {
       SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["qusmaster"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=qus;User ID=sa;Password=admin123");
                con.Open();
                string com = "SELECT dept_code,dept_name from tbl_dept";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                //gvdept.DataSource = dt;
                gvdept.DataBind();
                // this.Button2.Visible = true;
                con.Close();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
           // SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=qus;User ID=sa;Password=admin123");
            con.Open();
            string sql = "insert into tbl_dept (dept_code,dept_name) values('" + txtcode.Text.Trim() + "','" + txtname.Text.Trim() + "')";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            txtcode.Text = "";
            txtname.Text = "";

            Response.Redirect("dept_reg.aspx");
        }
    }
}