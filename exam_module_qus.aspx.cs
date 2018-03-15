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
    public partial class exam_module_qus : System.Web.UI.Page
    {
        public string s;
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

            dt.Columns.Add(new DataColumn("Question", typeof(string)));

            dt.Columns.Add(new DataColumn("Column1", typeof(string)));

            dt.Columns.Add(new DataColumn("Column2", typeof(string)));

            dt.Columns.Add(new DataColumn("Column3", typeof(string)));

           

            dr = dt.NewRow();

            dr["Question"] = 1;

            dr["Column1"] = string.Empty;

            dr["Column2"] = string.Empty;

            dr["Column3"] = string.Empty;

       

            dt.Rows.Add(dr);

         

            ViewState["CurrentTable"] = dt;



            Gridview1.DataSource = dt;

            Gridview1.DataBind();

            Label lbl1 = (Label)Gridview1.Rows[0].Cells[1].FindControl("Label1");

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

        protected void Button2_Click(object sender, EventArgs e)
        {
            AddNewRowToGrid();
        }

        private void AddNewRowToGrid()
        {
            int rowIndex = 0;
            int i;


            if (ViewState["CurrentTable"] != null)
            {

                DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];

                DataRow drCurrentRow = null;

                if (dtCurrentTable.Rows.Count > 0)
                {

                    for ( i = 1; i <= dtCurrentTable.Rows.Count; i++)
                    {

                       

                        //TextBox box1 = (TextBox)Gridview1.Rows[rowIndex].Cells[1].FindControl("TextBox1");

                        ////Label lbl1 = (Label)Gridview1.Rows[rowIndex].Cells[1].FindControl("Label1");
                        

                        drCurrentRow = dtCurrentTable.NewRow();

                        drCurrentRow["Question"] = i + 1;


                        ////dtCurrentTable.Rows[i - 1]["Column1"] = lbl1.Text;
                        //dtCurrentTable.Rows[i - 1]["Column1"] = box1.Text;

                      



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

                    for (int i = 0; i < dt.Rows.Count; i++)
                    {

                        //TextBox box1 = (TextBox)Gridview1.Rows[rowIndex].Cells[1].FindControl("TextBox1");

                       

                        ////Label lbl1 = (Label)Gridview1.Rows[rowIndex].Cells[1].FindControl("Label1");

                        ////lbl1.Text = dt.Rows[i]["Column1"].ToString();
                        //box1.Text = dt.Rows[i]["Column1"].ToString();

                       



                        rowIndex++;

                    }

                }

            }
        }

        protected void ddlscheme_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            string com = "Select exam_name,exam_id from tbl_exam where scheme_id= '" + ddlscheme.SelectedItem.Value + "' ";

            SqlDataAdapter adptt = new SqlDataAdapter(com, con);
            DataTable dtt = new DataTable();
            adptt.Fill(dtt);
            ddlexam.DataSource = dtt;
            ddlexam.DataTextField = "exam_name";
            ddlexam.DataValueField = "exam_id";
            ddlexam.DataBind();
            ddlexam.Items.Insert(0, new ListItem("Select", "NA"));
            //con.Close();
        }

        protected void Gridview1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
               
                DropDownList ddlmodule = (e.Row.FindControl("DropDownList2") as DropDownList);


                string com = "select module from tbl_sub where sub_id='" + ddlsub.SelectedValue + "' ";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
              
              
                adpt.Fill(dt);
                int n = Convert.ToInt32(dt.Rows[0][0].ToString());
                ddlmodule.Items.Clear();
                for (int i = 1; i <= n; i++)
                {
                    string g = Convert.ToString(i);
                    ddlmodule.Items.Add(new ListItem("Module " + g, g));
                }
                ddlmodule.Items.Insert(0, new ListItem("Select", "NA"));



                //if (e.Row.RowType == DataControlRowType.DataRow)
                //{

                //    DropDownList ddlquestion = (e.Row.FindControl("DropDownList1") as DropDownList);


                //    com = "select no_of_qus from tbl_exam where exam_id='" + ddlexam.SelectedValue + "' ";
                //    adpt = new SqlDataAdapter(com, con);
                //    dt = new DataTable();
                //    adpt.Fill(dt);
                //    n = Convert.ToInt32(dt.Rows[0][0].ToString());
                //    ddlquestion.Items.Clear();
                //    for (int i = 1; i <= n; i++)
                //    {
                //        string g = Convert.ToString(i);
                //        ddlquestion.Items.Add(new ListItem("Question " + g, g));
                //    }
                //    ddlquestion.Items.Insert(0, new ListItem("Select", "NA"));
                //}

                //if (e.Row.RowType == DataControlRowType.DataRow)
                //{

                //    Label lblqus = (e.Row.FindControl("Label1") as Label);




                //    string comm = "SELECT no_of_qus from tbl_exam where exam_id = '" + ddlexam.SelectedItem.Value + "' ";
                //    adpt = new SqlDataAdapter(comm, con);
                //    dt = new DataTable();
                //    adpt.Fill(dt);


                //    DataView dv = dt.DefaultView;
                //    int abc = 0;
                //    foreach (DataRowView drv in dv)
                //    {
                //        abc = Convert.ToInt32(drv.Row["no_of_qus"]);
                //    }
                    
                //    for (int i = 1; i <= abc; i++)
                //    {
                //        string g = Convert.ToString(i);
                //         s = Convert.ToString(new ListItem("Question " + g, g));
                        
                        
                //    }
                //    //lblqus.Text = s;
                //    lblqus.Text = s;
                //}
           
            }

            
        }

        protected void ddlexam_SelectedIndexChanged(object sender, EventArgs e)
        {
            SetInitialRow();


            // SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=qus;User ID=sa;Password=admin123");
            con.Open();
            string com = "SELECT no_of_qus from tbl_exam where exam_id = '" + ddlexam.SelectedItem.Value + "' ";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);

            DataView dv = dt.DefaultView;
            int abc = 0;
            foreach (DataRowView drv in dv)
            {
                abc = Convert.ToInt32(drv.Row["no_of_qus"]);
            }

            for (int i = 1; i < abc; i++)
            {
                AddNewRowToGrid();
            }

            Button1.Visible = true;
        }

       

     
   
    }
}