using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace First_WEB_1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(TextBox1.Text);

            string result = "";

            for(int i = 1; i <= a; i++)
            {
                result += i + ", ";
            }

            TextBox2.Text = result.Substring(0, result.Length - 2);
        }
    }
}