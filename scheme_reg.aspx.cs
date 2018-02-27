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
    public partial class scheme_reg : System.Web.UI.Page
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
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=qus;User ID=sa;Password=admin123");
            con.Open();
            string sql = "insert into tbl_scheme (scheme_name,dept_id,section) values('" + txtscheme_name.Text.Trim() + "','" + ddldept.SelectedItem.Value + "','" + txtsec.Text.Trim() + "')";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();

            txtscheme_name.Text = "";
            txtsec.Text = "";
            ddldept.ClearSelection();

            Response.Redirect("scheme_reg.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           // SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=qus;User ID=sa;Password=admin123");
            con.Open();
            string com = "SELECT dept_id,scheme_name from tbl_scheme";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            gvscheme.DataSource = dt;
            gvscheme.DataBind();
            // this.Button2.Visible = true;
            con.Close();
        }
    }
}