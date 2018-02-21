using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace QusMaster
{
    public partial class qus_view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=qus;User ID=sa;Password=admin123");
                conn.Open();
                string comm = "Select sub_name from tbl_sub ";
                SqlDataAdapter adptt = new SqlDataAdapter(comm, conn);
                DataTable dtt = new DataTable();
                adptt.Fill(dtt);
                ddlsub.DataSource = dtt;
                ddlsub.DataTextField = "sub_name";
                ddlsub.DataValueField = "sub_name";
                ddlsub.DataBind();
                conn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=qus;User ID=sa;Password=admin123");
            con.Open();
            string com = "SELECT sub_name,module_name,question,mark from tbl_qus where sub_name='" + ddlsub.SelectedValue + "'";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            gvqus.DataSource = dt;
            gvqus.DataBind();
            // this.Button2.Visible = true;
            con.Close();
        }
    }
}