using System;

namespace MyApp4
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Roll"] == null)
            {
                Response.Redirect("WebForm1.aspx");
                return;
            }

            lblRoll.Text = Session["Roll"].ToString();
            lblName.Text = Session["Name"].ToString();
            lblPer.Text = Session["Per"].ToString();
            lblGrade.Text = Session["Grade"].ToString();
            lblResult.Text = Session["Result"].ToString();
        }
    }
}