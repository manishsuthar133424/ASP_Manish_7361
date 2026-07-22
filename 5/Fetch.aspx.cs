using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fetch
{
    public partial class Fetch : System.Web.UI.Page
    {
        string ur = "";
        string ps = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ur = TextBox1.Text;
            ps = TextBox2.Text;

            Response.Write("Username is => " + ur);
            Response.Write("<br />Password is => " + ps);
        }
    }
}