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
    public partial class qus_upload : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=qus;User ID=sa;Password=admin123");
                conn.Open();
                string comm = "Select scheme_name from tbl_scheme ";
                SqlDataAdapter adptt = new SqlDataAdapter(comm, conn);
                DataTable dtt = new DataTable();
                adptt.Fill(dtt);
                ddlscheme.DataSource = dtt;
                ddlscheme.DataTextField = "scheme_name";
                ddlscheme.DataValueField = "scheme_name";
                ddlscheme.DataBind();
                conn.Close();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=qus;User ID=sa;Password=admin123");
            con.Open();
            string sql = "insert into tbl_qus (sub_name,scheme_name,module_name,question,mark,complexity) values('" + ddlsub.SelectedValue + "','" + ddlscheme.SelectedValue + "','" + ddlmodule.SelectedValue + "',N'" + txtqus.Text.Trim() + "','" + ddlmark.SelectedValue + "','" + ddlcomp.SelectedValue + "')";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            
            txtqus.Text = "";
            ddlsub.ClearSelection();
            ddlmodule.ClearSelection();
            ddlscheme.ClearSelection();
            ddlmark.ClearSelection();
            ddlcomp.ClearSelection();
        }
    }
}