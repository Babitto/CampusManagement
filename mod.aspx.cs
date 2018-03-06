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
    public partial class mod : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["qusmaster"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
          

            if (!IsPostBack)
            {
                con.Open();
                string com = "Select dept_name,dept_id from tbl_dept ";
                SqlDataAdapter adptt = new SqlDataAdapter(com, con);
                DataTable dtt = new DataTable();
                adptt.Fill(dtt);
                ddldept.DataSource = dtt;
                ddldept.DataTextField = "dept_name";
                ddldept.DataValueField = "dept_id";
                ddldept.DataBind();
                con.Close();
            }
        }

        private void SetInitialRow()
        {
            DataTable dt = new DataTable();
            DataRow dr = null;
            dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
            dt.Columns.Add(new DataColumn("Column1", typeof(string)));
            
            dr = dt.NewRow();
            dr["RowNumber"] = 1;
           dr["Column1"] = string.Empty;
            

            dt.Rows.Add(dr);
            //dr = dt.NewRow();

            //Store the DataTable in ViewState
            ViewState["CurrentTable"] = dt;

            Gridview1.DataSource = dt;
            Gridview1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            AddNewRowToGrid();
        }
        private void AddNewRowToGrid()
        {
            int rowIndex = 0;

            if (ViewState["CurrentTable"] != null)
            {
                DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
                DataRow drCurrentRow = null;
                if (dtCurrentTable.Rows.Count > 0)
                {
                    for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                    {
                        //extract the TextBox values
                        TextBox box1 = (TextBox)Gridview1.Rows[rowIndex].Cells[1].FindControl("TextBox1");


                        drCurrentRow = dtCurrentTable.NewRow();
                        drCurrentRow["RowNumber"] = i + 1;
                       drCurrentRow["Column1"] = box1.Text;


                        rowIndex++;
                    }
                    dtCurrentTable.Rows.Add(drCurrentRow);
                    ViewState["CurrentTable"] = dtCurrentTable;

                    Gridview1.DataSource = dtCurrentTable;
                    Gridview1.DataBind();
                }
            }
            else
            {
                Response.Write("ViewState is null");
            }
            //Set Previous Data on Postbacks
            SetPreviousData();

        }

        private void SetPreviousData()
        {
            int rowIndex = 0;
            if (ViewState["CurrentTable"] != null)
            {
                DataTable dt = (DataTable)ViewState["CurrentTable"];
                if (dt.Rows.Count > 0)
                {
                    for (int i = 1; i < dt.Rows.Count; i++)
                    {
                        TextBox box1 = (TextBox)Gridview1.Rows[rowIndex].Cells[1].FindControl("TextBox1");


                        box1.Text = dt.Rows[i]["Column1"].ToString();


                        rowIndex++;

                    }
                }
                // ViewState["CurrentTable"] = dt;

            }
        }

        protected void ddlscheme_SelectedIndexChanged(object sender, EventArgs e)
        {
            SetInitialRow();


            // SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=qus;User ID=sa;Password=admin123");
            con.Open();
            string com = "SELECT section from tbl_scheme where scheme_id = '" + ddlscheme.SelectedItem.Value + "' ";

            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            int n = Convert.ToInt32(dt.Rows[0][0].ToString());

            //DataView dv = dt.DefaultView;
            //int abc = 0;
            //foreach (DataRowView drv in dv)
            //{
            //    abc = Convert.ToInt32(drv.Row["section"]);
            //}

            for (int i = 1; i < n; i++)
            {
                AddNewRowToGrid();
            }
        }

        protected void Gridview1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                DropDownList ddlsec = (e.Row.FindControl("ddlsection") as DropDownList);

                string com = "select section from tbl_sec_mark where scheme_id='" + ddlscheme.SelectedValue + "' ";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                ddlsec.DataSource = dt;
                ddlsec.DataTextField = "section";
                ddlsec.DataValueField = "section";
                ddlsec.DataBind();
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

            com = "Select scheme_name,scheme_id from tbl_scheme where dept_id='" + ddldept.SelectedValue + "' ";
            adpt = new SqlDataAdapter(com, con);
            dt = new DataTable();
            adpt.Fill(dt);
            ddlscheme.DataSource = dt;
            ddlscheme.DataTextField = "scheme_name";
            ddlscheme.DataValueField = "scheme_id";
            ddlscheme.DataBind();

            ddlscheme.Items.Insert(0, new ListItem("Select", "NA"));
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
        }

    }
}