using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Text.RegularExpressions;

namespace QuesGen
{
    public partial class search_staff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }
        }

        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["qusmaster"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT staff_id, staff_name, username, password, email, usertype_id FROM tbl_staff WHERE usertype_id=1 and staff_name LIKE '%" + txtSearch.Text.Trim() + "%'";
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@staff_name", txtSearch.Text.Trim());
                    DataTable dt = new DataTable();
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                        gvsub.DataSource = dt;
                        gvsub.DataBind();
                    }
                }
            }
        }


        protected void Search1_Click(object sender, EventArgs e)
        {
            this.BindGrid();
        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvsub.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }

        protected void gvsub_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvsub.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }

        protected void gvsub_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = gvsub.Rows[e.RowIndex];
            string test = gvsub.DataKeys[e.RowIndex].Values[0].ToString();
            Int64 staff_id = Convert.ToInt64(gvsub.DataKeys[e.RowIndex].Values[0]);
            string name = (row.Cells[2].Controls[0] as TextBox).Text;
            string username = (row.Cells[3].Controls[0] as TextBox).Text;
            string password = (row.Cells[4].Controls[0] as TextBox).Text;
            string email = (row.Cells[5].Controls[0] as TextBox).Text;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["qusmaster"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE tbl_staff SET staff_name=@name, username=@username,password=@password,email=@email WHERE staff_id=@staff_id");
            {

                cmd.Parameters.AddWithValue("@staff_name", name);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Connection = con;
                // con.Open();
                cmd.ExecuteNonQuery();
                // con.Close();
            }
            con.Close();
            gvsub.EditIndex = -1;
            this.BindGrid();
        }

        protected void gvsub_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvsub.EditIndex = -1;
            this.BindGrid();
        }
    }
}