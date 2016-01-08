using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login_click(object sender, EventArgs e)
    {
        String user, password;
        user = p_user.Text;
        password = p_password.Text;
        if (user.Length == 0)
        {
            if (RadioButton1.Checked)
            {
                Response.Write("<script>alert('请输入学号')</script>");
                p_user.Focus();
            }
            else if (RadioButton2.Checked)
            {
                Response.Write("<script>alert('请输入教工号')</script>");
                p_user.Focus();
            }
            else
            {
                Response.Write("<script>alert('请输入管理员账号')</script>");
                p_user.Focus();
            }
        }
        else if (password.Length == 0)
        {
            Response.Write("<script>alert('请输入密码')</script>");
            p_password.Focus();
        }
        if (user.Length != 0 && password.Length != 0)
        {
            SqlConnection sqlconn = new SqlConnection("Integrated Security=true; database=StudentSystem; Server=localhost");
            sqlconn.Open();
            if (RadioButton1.Checked)
            {
                SqlCommand dr = new SqlCommand("select * from login_student where stu_number='" + user + "'and psw='" + password + "'", sqlconn);
                SqlDataReader sda = dr.ExecuteReader();
                if (sda.Read())
                {
                    Session["stu_name"] = sda["stu_name"].ToString();
                    Session["Student_sex"] = sda["stu_sex"].ToString();
                    Session["Student_number"] = sda["stu_number"].ToString();
                    Session["Student_tel"] = sda["stu_tel"].ToString();
                    Session["Student_id"] = sda["stu_id"].ToString();
                    Response.Redirect("student/student_window.aspx");
                }
                else
                {
                    Response.Write("<script>alert('学号或密码错误！')</script>");
                }
            }
            else if (RadioButton2.Checked)
            {
                SqlCommand dr = new SqlCommand("select * from login_teacher where Teach_num='" + user + "'and Psw='" + password + "'", sqlconn);
                SqlDataReader sda = dr.ExecuteReader();
                if (sda.Read())
                {
                    Session["teacher"] = sda["Teach_num"].ToString();
                    Session["cno"] = sda["cno"].ToString();
                    Response.Redirect("teacher/teacher_window.aspx");
                }
                else
                {
                    Response.Write("<script>alert('教工号或密码错误！')</script>");
                }
            }
            else if (RadioButton3.Checked)
            {
                SqlCommand dr = new SqlCommand("select admin_no,admin_psw from login_admin where admin_no='" + user + "'and admin_psw='" + password + "'", sqlconn);
                SqlDataReader sda = dr.ExecuteReader();
                if (sda.Read())
                {
                    //Session["name"] = sda["admin_name"].ToString();
                    Response.Redirect("Admin/admin.aspx");
                }
                else
                {
                    Response.Write("<script>alert('管理员账号或密码错误！')</script>");
                }
            }
            sqlconn.Close();
        }
    }

    protected void exchange(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
        {
            pan1.Text = "学号:";
            forgetpassword.Visible = true;
        }
        else if (RadioButton2.Checked)
        {
            pan1.Text = "工号:";
            forgetpassword.Visible = false;
        }
        else
        {
            pan1.Text = "账号:";
            forgetpassword.Visible = false;
        }
    }
    protected void forget_psw(object sender, EventArgs e)
    {
        //this.Page.RegisterClientScriptBlock("forgetpass", "<script>forgetpass();</script>");
        ClientScript.RegisterStartupScript(ClientScript.GetType(), "myscript", "<script>forgetpass();</script>");
    }
}