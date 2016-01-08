using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class DeleteTeacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection strconn = new SqlConnection(ConfigurationManager.ConnectionStrings["comm"].ToString());
        string strSql = "delete from login_teacher where Tname=@name";
        strconn.Open();
        SqlCommand deleteCommand = new SqlCommand(strSql, strconn);
        deleteCommand.Parameters.Add("@name", SqlDbType.Char, 10).Value = DropDownList1.Text;
       
        try{
            int aaa= deleteCommand.ExecuteNonQuery();
            if(aaa==1)
            Label2.Text="删除成功";
            Label2.Visible = true;
        }
        catch {
            Label2.Visible = true;
            Label2.Text = "删除失败"; 
        }
        finally{strconn.Close();}
        
    }
}