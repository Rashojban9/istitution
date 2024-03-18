using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace istitution
{
    public partial class dash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Assuming SqlDataSource2 retrieves the total number of instructors
                DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                DataView dv1 = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
                DataView dv2 = (DataView)SqlDataSource3.Select(DataSourceSelectArguments.Empty);



                int totalstudents = Convert.ToInt32(dv.Table.Rows[0][0]);
                int totalinstructor = Convert.ToInt32(dv1.Table.Rows[0][0]);
                int totalcourse = Convert.ToInt32(dv2.Table.Rows[0][0]);


                // Set the text of the TextBoxes to display the total count
                TextBox1.Text = totalstudents.ToString();
                TextBox2.Text = totalinstructor.ToString();
                TextBox3.Text = totalcourse.ToString();


            }

        }
    }
}