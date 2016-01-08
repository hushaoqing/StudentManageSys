using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Security;
using System.Data;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Ano,Pwd,Aname;
        Ano = TextBox1.Text;
        Pwd = TextBox2.Text;
        Aname = "";
        Aname = TextBox3.Text;
        SqlConnection strconn = new SqlConnection(ConfigurationManager.ConnectionStrings["Strconn"].ToString());
        SqlCommand quary = new SqlCommand("select * from login_admin where admin_no=@Ano and admin_name=@Aname and admin_psw=@Pwd ",strconn);
        quary.Parameters.Add("@Ano",SqlDbType.Char,10);
        quary.Parameters.Add("@Pwd",SqlDbType.Char,10);
        quary.Parameters.Add("@Aname", SqlDbType.NChar, 10);
        quary.Parameters["@Ano"].Value=Ano;
        quary.Parameters["@Pwd"].Value=Pwd;
        quary.Parameters["@Aname"].Value =Aname;
        strconn.Open();
        SqlDataReader qqq = quary.ExecuteReader();
        if (qqq.Read())
        {
            Session["name"] = Aname;
             Response.Redirect("admin.aspx");
            

        }
        else { 
             Response.Write("<script>alert('用户名或密码错误') </script>");
             TextBox1.Focus();
        }
        strconn.Close();


    }
}