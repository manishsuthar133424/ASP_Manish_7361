using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login_page
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string validUser = "Admin";
            string validPass = "Admin123";

            Label1.Visible = true;

            if (TextBox1.Text == "" || TextBox2.Text == "")
            {

                Label1.ForeColor = System.Drawing.Color.Gold;
                Label1.Text = "⚠️ Please Enter Username And Password";
            }
            else if (TextBox1.Text == validUser && TextBox2.Text == validPass)
            {
          
                Label1.ForeColor = System.Drawing.Color.Lime;
                Label1.Text = "✅ Login Successful!  Welcome, " + TextBox1.Text + "!";

           
            }
            else
            {

                Label1.ForeColor = System.Drawing.Color.Tomato;
                Label1.Text = "❌ Invalid Username Or Password";
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}