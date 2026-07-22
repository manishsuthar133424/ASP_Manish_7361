using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace database
{
    public partial class Data_Show : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader sdr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\AAYUSH_7237\\SEM_5\\ASP_NET\\database\\database\\App_Data\\user_data.mdf;Integrated Security=True");
            conn.Open();
            cmd = new SqlCommand(" select * from Table1 ", conn);
            sdr = cmd.ExecuteReader();

            if (sdr.Read())
            {
                string id = sdr[0].ToString();
                string us = sdr[1].ToString();
                string ps = sdr[2].ToString();

                Response.Write("<table border='2'>");
                Response.Write("<tr>");
                Response.Write("<th>ID</th>");
                Response.Write("<th>Username</th>");
                Response.Write("<th>Password</th>");
                Response.Write("</tr>");

                while (sdr.Read())
                {
                    Response.Write("<tr>");
                    Response.Write("<td>" + sdr[0].ToString() + "</td>");
                    Response.Write("<td>" + sdr[1].ToString() + "</td>");
                    Response.Write("<td>" + sdr[2].ToString() + "</td>");
                    Response.Write("</tr>");
                }

                Response.Write("</table>");
            }

            sdr.Close();
            conn.Close();
        }
    }
}