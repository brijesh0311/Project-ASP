using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace PROJECT_ASP
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            //SELECT[service_Id], [Title], [Description], [status] FROM[services]
            //UPDATE[services] SET[Title] = @Title, [Description] = @Description, [status] = @status WHERE[service_Id] = @service_Id
            //INSERT INTO[services] ([Title], [Description], [status]) VALUES(@Title, @Description, @status)
            //DELETE FROM[services] WHERE[service_Id] = @service_Id
            Print();
        }

        public void Print()
        {
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT[service_Id], [Title], [Description], [status],[img] FROM[services]", con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Submit")
            {
                if (FileUpload1.HasFile)
                {
                    FileUpload1.SaveAs(Server.MapPath("~/uploads/" + FileUpload1.FileName));
                    SqlCommand cmd = new SqlCommand("INSERT INTO[services] ([Title], [Description], [status],[img]) VALUES(@Title, @Description, @status,@img)", con);
                    cmd.Parameters.AddWithValue("@Title", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Description", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@status", RadioButtonList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@img", FileUpload1.FileName);
                    con.Open();
                    int s = cmd.ExecuteNonQuery();
                    con.Close();
                    if (s == 1)
                    {
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        FileUpload1.Attributes.Clear();
                        Image1.ImageUrl = string.Empty;
                        //Response.Redirect("~/LOGIN.aspx");
                        Literal7.Text = "Inserted Service Sucessfully..";
                        Print();
                    }
                    else
                    {
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        FileUpload1.Attributes.Clear();
                        Image1.ImageUrl = string.Empty;
                        Literal7.Text = "Error in Inserted data ";
                        Print();
                    }
                }
            }
            else
            {
                if (FileUpload1.HasFile)
                {
                    FileUpload1.SaveAs(Server.MapPath("~/uploads/" + FileUpload1.FileName));
                    SqlCommand cmd = new SqlCommand("UPDATE[services] SET[Title] = @Title, [Description] = @Description, [status] = @status,[img] = @img WHERE[service_Id] = @service_Id", con);
                    cmd.Parameters.AddWithValue("@Title", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Description", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@status", RadioButtonList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@img", FileUpload1.FileName);
                    cmd.Parameters.AddWithValue("@service_Id", ViewState["service_id"]);
                    con.Open();
                    int s = cmd.ExecuteNonQuery();
                    con.Close();
                    if (s == 1)
                    {
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        FileUpload1.Attributes.Clear();
                        Image1.ImageUrl = string.Empty;
                        //Response.Redirect("~/LOGIN.aspx");
                        Literal7.Text = "Service Updated Sucessfully..";
                        Button1.Text = "Submit";
                        Print();
                    }
                    else
                    {
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        FileUpload1.Attributes.Clear();
                        Image1.ImageUrl = string.Empty;
                        Button1.Text = "Submit";
                        Literal7.Text = "Error in Updation Service ";
                        Print();
                    }
                //}
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            SqlCommand cmd = new SqlCommand("DELETE FROM[services] WHERE[service_Id] = @service_Id", con);
            cmd.Parameters.AddWithValue("@service_Id", btn.CommandArgument);
            con.Open();
            int s = cmd.ExecuteNonQuery();
            con.Close();
            if (s == 1)
            {
                Literal7.Text = "Data Service Deleted Sucessfully !";
                Print();
            }
            else
            {
                Literal7.Text = "Error for Delete Data Service !";
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton btn = (ImageButton)sender;
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT[service_Id], [Title], [Description], [status], [img] FROM[services] WHERE[service_Id] =  " + btn.CommandArgument, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            TextBox1.Text = dt.Rows[0][1].ToString();
            TextBox2.Text = dt.Rows[0][2].ToString();
            RadioButtonList1.SelectedValue = dt.Rows[0][3].ToString();
            Image1.ImageUrl = "~/uploads/" + dt.Rows[0][4].ToString();
            ViewState["service_id"] = btn.CommandArgument;
            Button1.Text = "Update";
        }
    }
}