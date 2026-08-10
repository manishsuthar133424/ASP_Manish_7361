using System;
using System.Data.SqlClient;

namespace MyApp4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int m1 = Convert.ToInt32(txtM1.Text);
            int m2 = Convert.ToInt32(txtM2.Text);
            int m3 = Convert.ToInt32(txtM3.Text);
            int m4 = Convert.ToInt32(txtM4.Text);
            int m5 = Convert.ToInt32(txtM5.Text);

            int total = m1 + m2 + m3 + m4 + m5;
            double per = total / 5.0;

            string grade;
            string result;

            if (m1 < 35 || m2 < 35 || m3 < 35 || m4 < 35 || m5 < 35)
            {
                result = "Fail";
                grade = "F";
            }
            else
            {
                result = "Pass";

                if (per >= 75)
                    grade = "A";
                else if (per >= 60)
                    grade = "B";
                else if (per >= 50)
                    grade = "C";
                else
                    grade = "D";
            }

            conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\student\Desktop\7361\MyApp5\MyApp5\App_Data\Database.mdf;Integrated Security=True");

            conn.Open();

            cmd = new SqlCommand("INSERT INTO Student VALUES(@Roll,@Name,@Course,@Sem,@Email,@Mobile,@M1,@M2,@M3,@M4,@M5,@Total,@Per,@Grade,@Result)", conn);

            cmd.Parameters.AddWithValue("@Roll", txtRoll.Text);
            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Course", txtCourse.Text);
            cmd.Parameters.AddWithValue("@Sem", txtSem.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text);
            cmd.Parameters.AddWithValue("@M1", m1);
            cmd.Parameters.AddWithValue("@M2", m2);
            cmd.Parameters.AddWithValue("@M3", m3);
            cmd.Parameters.AddWithValue("@M4", m4);
            cmd.Parameters.AddWithValue("@M5", m5);
            cmd.Parameters.AddWithValue("@Total", total);
            cmd.Parameters.AddWithValue("@Per", per);
            cmd.Parameters.AddWithValue("@Grade", grade);
            cmd.Parameters.AddWithValue("@Result", result);

            cmd.ExecuteNonQuery();
            conn.Close();

            Session["Roll"] = txtRoll.Text;
            Session["Name"] = txtName.Text;
            Session["Per"] = per;
            Session["Grade"] = grade;
            Session["Result"] = result;

            Response.Redirect("Result.aspx");
        }
    }
}