using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlTypes;
using System.Data;

public partial class InsertStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MessageTB.Visible = false;
        SnoTB.Focus();
    }
    protected void InsertTB_Click(object sender, EventArgs e) 
    {
      
 
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["comm"].ToString());
        string snostr = SnoTB.Text;
        string snamestr = SnameTB.Text;
        string sexstr = SexTB.Text;
        string telstr = TelTB.Text;
        string strcommand = "Insert login_Student(stu_number,stu_name,stu_sex,stu_tel,stu_id,psw) Values (@snostr,@snamestr,@sexstr,@telstr,@stu_id,@psw)";
        SqlCommand CmdMsg = new SqlCommand(strcommand, conn);
        CmdMsg.Parameters.Add("@snostr", SqlDbType.Char,10).Value=snostr;
        CmdMsg.Parameters.Add("@snamestr", SqlDbType.NChar,10).Value=snamestr;
        CmdMsg.Parameters.Add("@sexstr", SqlDbType.NChar,2).Value=sexstr;
        CmdMsg.Parameters.Add("@telstr", SqlDbType.Char,11).Value=telstr;
        CmdMsg.Parameters.Add("@psw", SqlDbType.Char,10).Value = TextBox1.Text;
        CmdMsg.Parameters.Add("@stu_id", SqlDbType.Char, 18).Value = TextBox2.Text;

        try
        {
            conn.Open();
            int RecordeAffected = CmdMsg.ExecuteNonQuery();
            if (RecordeAffected == 1)
            {
                MessageTB.Text = "插入成功";
                MessageTB.Visible = true;
            }
        }
        catch
        {
            MessageTB.Text = "插入失败，系统错误！";
            MessageTB.Visible = true;
        }
        finally { conn.Close(); }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }
}