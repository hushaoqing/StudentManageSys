using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class teacher_Default : System.Web.UI.Page
{
    Boolean check_grade=true;//为jia 可以录入成绩，为zhen不能录入
    string t_num;
    int count;
    protected void Page_Load(object sender, EventArgs e)
    {
        t_num = Session["teacher"].ToString();
       
    }
    protected void draw_student(object sender, EventArgs e)
    {
        SqlConnection sqlconn = new SqlConnection("Integrated Security=true; database=StudentSystem; Server=localhost");
        sqlconn.Open();
        SqlCommand dr = new SqlCommand
          ("select lo_grade from login_teacher where cno='" + Session["cno"].ToString() + "' ", sqlconn);
        SqlDataReader sda = dr.ExecuteReader();
        if(sda.Read()){
            if (sda["lo_grade"].ToString() == "1")
            {
                check_grade = false;
                Gridview2.Visible = false;
                button1.Visible = false;
                draw_information.Text = "您已录过成绩，不能再录入";
                draw_information.Visible = true;
            }
            else
            {
                check_grade = true;
            }
        }
        sqlconn.Close();
        if (check_grade == true)
        {
            sqlconn.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter ap = new SqlDataAdapter
    ("select stu_number as 学号,stu_name as 姓名 from login_student where stu_number in(select sno from s_grade where cno =(select cno from login_teacher where Teach_num='" + t_num + "'))", sqlconn);
            ap.Fill(ds);
            if (ds != null)
            {
                Gridview2.DataSource = ds;
                Gridview2.DataBind();
                sqlconn.Close();
                button1.Visible = true;
                Gridview2.Visible = true;
                Gridview2.CssClass = "text";
                draw_information.Visible = false;
            }
            else
            {
                draw_information.Text = "没人选修这门课";
            }               
        }       
    }
    protected void click(object sender, EventArgs e)
    {
        string grades;
        string snos;
        count = 0;
        int data_rows = this.Gridview2.Rows.Count;//获取数据源的行数
        //Response.Write("<script>alert('"+data_rows+"');</script>");
            SqlConnection sqlconn = new SqlConnection("Integrated Security=true; database=StudentSystem; Server=localhost");
            for (int i = 0; i < data_rows; i++)
            {
                grades = ((TextBox)this.Gridview2.Rows[i].Cells[2].FindControl("cin_grade")).Text;
                if (grades.ToString()!="")
                {
                    count++; 
                    //Response.Write("<script>alert('"+ 2+ grades +22+ "');</script>");
                }
                else
                {
                    break;
                }
            }
            if (count == data_rows)
            {
                for (int i = 0; i < data_rows; i++)
                {
                    grades = ((TextBox)this.Gridview2.Rows[i].Cells[2].FindControl("cin_grade")).Text;
                    if (grades != null)
                    {
                        snos = Gridview2.Rows[i].Cells[0].Text.ToString();
                        // Response.Write("<script>alert('" + snos + "')</script>");
                        // Response.Write("<script>alert('" + grades + "')</script>");
                        sqlconn.Open();
                        SqlCommand dr = new SqlCommand
                        ("update s_grade set grade='" + grades + "' where sno='" + snos.ToString() + "' and cno='" + Session["cno"].ToString() + "'", sqlconn);
                        SqlDataReader sda = dr.ExecuteReader();
                        sqlconn.Close();
                    }
                }
                sqlconn.Open();
                SqlCommand dr1 = new SqlCommand
                ("update login_teacher set lo_grade='" + 1 + "' where  Teach_num='" + t_num + "'", sqlconn);
                SqlDataReader sdas = dr1.ExecuteReader();
                sqlconn.Close();
                Gridview2.Visible = false;
                button1.Visible = false;
                draw_information.Text = "修改成功";
                draw_information.Visible = true;
     
            }
            else
            {
                draw_information.Text = "未录入完全，有些没有录成绩";
                draw_information.Visible = true;

            }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:18288/Default.aspx");
    }
}