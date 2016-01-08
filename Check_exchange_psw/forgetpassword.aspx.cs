using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void nextpsw(object sender, EventArgs e)
    {
        String Stu_sno = sno.Text;
        String Stu_name = name.Text;
        String Stu_id = Id.Text;
        if (Stu_sno.Length==0)
        {
            Response.Write("<script>alert('请输入学号');</script>");
        }
        else if(Stu_name.Length==0){
            Response.Write("<script>alert('请输入姓名');</script>");
        }
        else if (Stu_id .Length==0)
        {
            Response.Write("<script>alert('请输入身份证号');</script>");
        }
        else 
        {
            SqlConnection sqlconn = new SqlConnection("Integrated Security=true; database=StudentSystem; Server=localhost");
            sqlconn.Open();
            SqlCommand dr = new SqlCommand("select * from login_student where stu_number='" + Stu_sno + "'", sqlconn);
            SqlDataReader sda = dr.ExecuteReader();
            if (sda.Read())
            {
                Session["Stu_sno"] = Stu_sno;
                if (Stu_name == sda["stu_name"].ToString().Trim())
                {
                    if (Stu_id == sda["stu_id"].ToString().Trim())
                    {
                        Response.Redirect("exchange_psw.aspx");

                    }
                    else
                    {
                        Response.Write("<script>alert('学号与身份证不匹配');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('学号与姓名不匹配');</script>");
                   
                }                  
            }
            else
            {
                Response.Write("<script>alert('不存在的学号');</script>");
            }
            sqlconn.Close();
        }
       
    }
}