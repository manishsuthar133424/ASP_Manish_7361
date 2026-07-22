using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculater
{
    public partial class Calculater : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox3.Enabled = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double a = Convert.ToDouble(TextBox1.Text);
            double b = Convert.ToDouble(TextBox2.Text);

            ViewState["R"] = a + b;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            double a = Convert.ToDouble(TextBox1.Text);
            double b = Convert.ToDouble(TextBox2.Text);

            ViewState["R"] = a - b;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            double a = Convert.ToDouble(TextBox1.Text);
            double b = Convert.ToDouble(TextBox2.Text);

            ViewState["R"] = a * b;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            double a = Convert.ToDouble(TextBox1.Text);
            double b = Convert.ToDouble(TextBox2.Text);

            if (b != 0)
            {
                ViewState["R"] = a / b;
            }
            else
            {
                ViewState["R"] = "Cannot Divisible By Zero..!!";
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (ViewState["R"] != null)
            {
                TextBox3.Text = ViewState["R"].ToString();
            }
            else
            {
                TextBox3.Text = "Please Enter Number..!!";
            }
        }
    }
}