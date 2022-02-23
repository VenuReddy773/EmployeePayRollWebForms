using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayRoll.WebForms
{
    public partial class SignUp : System.Web.UI.Page
    {
        static string str= ConfigurationManager.ConnectionStrings["MyDbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        protected void Page_Load(object sender, EventArgs e)
        {

        }  
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("AddUser", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Firstname", TextBox2.Text);
            com.Parameters.AddWithValue("@Lastname", TextBox3.Text);
            com.Parameters.AddWithValue("@Email", TextBox1.Text);
            com.Parameters.AddWithValue("@Password", TextBox4.Text);
            com.Parameters.AddWithValue("@PhoneNumber", TextBox6.Text);
            //com.Parameters.AddWithValue("@RegisteredDate",DateTime.Now);
            con.Open();
            int k = com.ExecuteNonQuery();
            if (k != 0)
            {
                Label1.Text = "Record Inserted Succesfully into the Database";
                Label1.ForeColor = System.Drawing.Color.CornflowerBlue;
                //Response.Redirect("Login.aspx");
            }
            else
            {
                Label1.Text = "user already exist";
            }
            con.Close();
           
        }
    }
}
