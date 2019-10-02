using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tao_Restaurant
{
    public partial class viewstateTester : System.Web.UI.Page
    {

        public int counter
        {
            get
            {
                if (ViewState["pcounter"] != null)
                {
                    return ((int)ViewState["pcounter"]);
                }
                else
                {
                    return 0;
                }
            }

            set
            {
                ViewState["pcounter"] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnIncrement_Click(object sender, EventArgs e)
        {
            lblCounter.Text = counter.ToString();
            counter++;
        }
    }
}