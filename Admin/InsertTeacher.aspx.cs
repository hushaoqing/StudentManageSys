using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;
using System.Data;

public partial class InsertTeacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["comm"].ToString());
        string strcommand = "Insert login_teacher(Teach_num,Tname,cno,Psw,lo_grade) Values (@tnostr,@name,@cno,@Psw,@lo_grade)";
        SqlCommand CmdMsg = new SqlCommand(strcommand, conn);
        CmdMsg.Parameters.Add("@tnostr", SqlDbType.Char, 10).Value = TextBox1.Text;
        CmdMsg.Parameters.Add("@cno", SqlDbType.Char,2).Value =TextBox2.Text;
        CmdMsg.Parameters.Add("@Psw", SqlDbType.Char, 10).Value = TextBox4.Text;
        CmdMsg.Parameters.Add("@name", SqlDbType.NChar, 10).Value = TextBox3.Text;
        CmdMsg.Parameters.Add("@lo_grade", SqlDbType.Char, 1).Value = 0;
        try
        {
            conn.Open();
            int RecordeAffected = CmdMsg.ExecuteNonQuery();
            if (RecordeAffected == 1)
            {
                Label1.Text = "插入成功";
                Label1.Visible = true;
            }
        }
        catch
        {
            Label1.Text = "插入失败，系统错误！";
            Label1.Visible = true;
        }
        finally { conn.Close(); }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }
}