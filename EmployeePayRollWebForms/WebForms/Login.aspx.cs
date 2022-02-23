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
    public partial class Login : System.Web.UI.Page
    {
        static string str = ConfigurationManager.ConnectionStrings["MyDbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand com = new SqlCommand("Login", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@Email", TextBox1.Text);
                com.Parameters.AddWithValue("@Password", TextBox2.Text);
                con.Open();
                var datareader = com.ExecuteReader();
                if (datareader.HasRows)
                {                    
                    Session["form"] = datareader;
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    Response.Redirect("Error.aspx");
                }
                con.Close();
            }
            catch (InvalidExpressionException ex)
            {
                Response.Redirect("Error.aspx");
                throw ex;    
            }                   
        }
    }
}