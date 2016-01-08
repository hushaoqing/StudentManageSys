using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;

public partial class Grade : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*Label1.Visible = false;
        Label2.Visible = true;
        Label3.Visible = true;
        TextBox3.Visible = false;*/
        if(!IsPostBack){
        Label1.Visible = false;
        TextBox3.Visible = false;
        TextBox1.Focus();
        }
        Label4.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection strconn = new SqlConnection(ConfigurationManager.ConnectionStrings["comm"].ToString());
        string strcomm = "select grade from login_Student,s_grade,C where login_Student.stu_number=s_grade.sno and s_grade.cno=C.CNO and stu_name=@sname and CN=@cname";
        SqlCommand quarycomm = new SqlCommand(strcomm, strconn);
        quarycomm.Parameters.Add("@sname",System.Data.SqlDbType.NChar,10).Value=TextBox1.Text;
        quarycomm.Parameters.Add("@cname", System.Data.SqlDbType.NVarChar, 10).Value = TextBox2.Text;
        strconn.Open();
        try { 
            Int32 scorevalue = (Int32)quarycomm.ExecuteScalar();
            Label3.Text = Convert.ToString(scorevalue);
            TextBox3.Text = "";
            TextBox3.Focus();
           /////////////
            Label1.Visible = true;
            TextBox3.Visible = true;
        }
        catch
        {
            Label3.Text = "没有成绩";
        }
        finally { strconn.Close(); }

    }
    protected void xiugai_Click(object sender, EventArgs e)
    {

        SqlConnection strconn = new SqlConnection(ConfigurationManager.ConnectionStrings["comm"].ToString());
        string strcomm = "update s_grade set grade=@Score from login_Student,s_grade,C where login_Student.stu_number=s_grade.sno and s_grade.cno=C.CNO and stu_name=@sname and CN=@cname";
        SqlCommand quarycomm = new SqlCommand(strcomm, strconn);
        quarycomm.Parameters.Add("@sname", System.Data.SqlDbType.Char, 8).Value = TextBox1.Text;
        quarycomm.Parameters.Add("@cname", System.Data.SqlDbType.Char, 20).Value = TextBox2.Text;
        quarycomm.Parameters.Add("@Score", System.Data.SqlDbType.Int, 2).Value = TextBox3.Text;
        strconn.Open();
        try
        {
            int RecordAffrcted = quarycomm.ExecuteNonQuery();
            if (RecordAffrcted == 1)
            {
                Label4.Visible = true;
                Label4.Text = "修改成功";
            }
        }
        catch
        {   
            Label4.Visible=true;
            Label4.Text = "修改失败";
            TextBox3.Text = "";
            TextBox3.Focus();
        }
        finally { strconn.Close(); }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }
}