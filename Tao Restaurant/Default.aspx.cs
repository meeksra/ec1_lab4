using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tao_Restaurant
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["firstname"] != null && Session["lastname"] != null){
                lblMessage.Text = "Welcome " + Session["firstname"].ToString() + " " + Session["lastname"].ToString();

            }
        }
    }
}