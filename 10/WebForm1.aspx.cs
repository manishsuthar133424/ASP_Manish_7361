using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace database
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader sdr;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(
                "Data Source=(LocalDB)\\MSSQLLocalDB;" +
                "AttachDbFilename=C:\\Users\\Manish\\Desktop\\MU\\Asp.net\\10\\10\\App_Data\\Database1.mdf;" +
                "Integrated Security=True"
            );

            conn.Open();

            cmd = new SqlCommand(
                "insert into Table1(Name, Age) values('" +
                TextBox1.Text + "'," +
                TextBox2.Text + ")", conn);

            cmd.ExecuteNonQuery();

            conn.Close();

            Response.Write("Data Saved Successfully");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(
                "Data Source=(LocalDB)\\MSSQLLocalDB;" +
                "AttachDbFilename=C:\\Users\\Manish\\Desktop\\MU\\Asp.net\\10\\10\\App_Data\\Database1.mdf;" +
                "Integrated Security=True"
            );

            conn.Open();

            cmd = new SqlCommand("select * from Table1", conn);

            sdr = cmd.ExecuteReader();

            GridView1.DataSource = sdr;
            GridView1.DataBind();

            sdr.Close();
            conn.Close();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;

            Button2_Click(sender, e);
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(
                GridView1.DataKeys[e.RowIndex].Value
            );

            TextBox name = (TextBox)GridView1.Rows[e.RowIndex]
                .Cells[1].Controls[0];

            TextBox age = (TextBox)GridView1.Rows[e.RowIndex]
                .Cells[2].Controls[0];

            conn = new SqlConnection(
                "Data Source=(LocalDB)\\MSSQLLocalDB;" +
                "AttachDbFilename=C:\\Users\\Manish\\Desktop\\MU\\Asp.net\\10\\10\\App_Data\\Database1.mdf;" +
                "Integrated Security=True"
            );

            conn.Open();

            cmd = new SqlCommand(
                "update Table1 set Name='" + name.Text +
                "', Age=" + age.Text +
                " where ID=" + id, conn);

            cmd.ExecuteNonQuery();

            conn.Close();

            GridView1.EditIndex = -1;

            Button2_Click(sender, e);
        }

        protected void GridView1_RowCancelingEdit(
            object sender,
            GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;

            Button2_Click(sender, e);
        }
    }
}