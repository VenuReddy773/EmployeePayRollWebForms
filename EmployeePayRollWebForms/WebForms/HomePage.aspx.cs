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
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                GridView1.DataSource = Session["form"];
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Redirect("Error.aspx");
            }
           
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employee Payroll Form.aspx");
        }

        protected void ImageButton1_Click(object sender, EventArgs e)
        {
        }
    }
}