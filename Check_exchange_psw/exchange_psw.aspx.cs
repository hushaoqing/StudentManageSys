using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Check_exchange_psw_exchange_psw : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void checkbit(object sender, EventArgs e)
    {
        String schange1_psw=change1_psw.Text;
        String scheck1_psw=check1_psw.Text;
        if (schange1_psw.Length < 6 || schange1_psw.Length > 10)
        {
            hint.Visible = true;
            hint.CssClass = "hint_psw";
            change1_psw.Focus();
        }
        else
        {
            hint.Visible = false;
            if (schange1_psw != scheck1_psw)
            {
                hint.Text = "两次密码不相同";
                hint.Visible = true;
                hint.CssClass = "hint_psw";
                change1_psw.Focus();
            }
            else
            {
                SqlConnection sqlconn = new SqlConnection("Integrated Security=true; database=StudentSystem; Server=localhost");
                sqlconn.Open();
                SqlCommand dr = new SqlCommand("update login_student set psw='" +schange1_psw+ "' where stu_number='" + Session["Stu_sno"].ToString() + "'", sqlconn);
                SqlDataReader sda = dr.ExecuteReader();
                sqlconn.Close();
                Response.Write("<script type=text/javascript>window.close();</script>");
                Response.Write("<script type=text/javascript>alert('修改成功');</script>");
            }
        }
    }
}