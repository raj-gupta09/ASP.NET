using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AspAddDemo
{
    public partial class SearchStudent : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["str"].ConnectionString);
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("Select * from Student_master where Stud_code=@SCode", con);
            cmd.Parameters.AddWithValue("@SCode", txtCode.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
           
            if(dr.HasRows)
            {
                dr.Read();
                txtName.Text = dr["Stud_Name"].ToString();
                txtDCode.Text = dr["Dept_Code"].ToString();
                txtDOB.Text = dr["Stud_Dob"].ToString();
                txtAddress.Text = dr["Address"].ToString();

                txtName.Enabled = true;
                txtDCode.Enabled = true;
                txtDOB.Enabled = true;
                txtAddress.Enabled = true;

            }
            con.Close();


        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("Update Student_master set Stud_Name=@SName,Dept_Code=@DCode,Stud_Dob=@Dob,Address=@Address where Stud_Code=@SCode",con);
            cmd.Parameters.AddWithValue("@SCode", txtCode.Text);
            cmd.Parameters.AddWithValue("@SName", txtName.Text);
            cmd.Parameters.AddWithValue("@DCode", txtDCode.Text);
            cmd.Parameters.AddWithValue("@Dob", Convert.ToDateTime(txtDOB.Text));
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
            con.Open();
            int rowsAffected = Convert.ToInt32(cmd.ExecuteNonQuery());
            con.Close();
            if (rowsAffected > 0)
            {
                Response.Write("<script type='text/javascript'>alert('Student Data Updated');</script>");
                txtName.Enabled = false;
                txtDCode.Enabled = false;
                txtDOB.Enabled = false;
                txtAddress.Enabled = false;
            }
            else
            {
                Response.Write("<script type='text/javascript'>alert('Student Data Not Updated');</script>");
            }




           
        }
    }
}