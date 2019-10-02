using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tao_Restaurant
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Session["firstname"] = txtFirstname.Text;
            Session["lastname"] = txtLastname.Text;

            Response.Redirect("~/Default.aspx");
        }
    }
}