using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace database
{
    public partial class database : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        int id;
        string us = "";
        string ps = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(TextBox3.Text);
            us = TextBox1.Text;
            ps = TextBox2.Text;
            conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\AAYUSH_7237\\SEM_5\\ASP_NET\\database\\database\\App_Data\\user_data.mdf;Integrated Security=True");
            conn.Open();
            cmd = new SqlCommand(" insert into Table1 values(" + id + " , '" + us + "' , '" + ps + "')", conn );
            cmd.ExecuteNonQuery();
            conn.Close();

            Response.Write("Data Inserted Done..!!");

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox1.Focus();
        }
    }
}