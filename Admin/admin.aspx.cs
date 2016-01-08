using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        GridView2.Visible = false;
       // GridView4.Visible = false;
       // GridView5.Visible = false;
       // GridView6.Visible = false;
        //Label2.Text = Session["name"].ToString();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView2.Visible = true;
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("InsertStudent.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("InsertTeacher.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("DeleteStudent.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("DeleteTeacher.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("Grade.aspx");
    }
}