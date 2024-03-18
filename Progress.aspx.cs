using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace istitution
{
    public partial class Progress : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddData_Click(object sender, EventArgs e)
        {
            Response.Redirect("add_progress.aspx");

        }
    }
}