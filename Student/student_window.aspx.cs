using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Student_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        user_name.Text = Session["stu_name"].ToString();
    }
    protected void show_choice_message(object sender, EventArgs e)
    {
        if (choice_course1.Visible)
        {
            choice_course1.Visible = false;
            choice_course2.Visible = false;
        }
        else
        {
            choice_course1.Visible = true;
            choice_course2.Visible = true; 
        }
    }
    protected void student_message(object sender, EventArgs e)
    {
        Student_sno.Text = Session["Student_number"].ToString();
        Student_sname.Text = Session["stu_name"].ToString();
        Student_sex.Text = Session["Student_sex"].ToString();
        Student_tel.Text = Session["Student_tel"].ToString();
        String YearMouDay = Session["Student_id"].ToString();
        Student_ID.Text = YearMouDay.ToString();
        Label1.Text = "学号";
        Label2.Text = "姓名";
        Label3.Text = "性别";
        Label4.Text = "电话号码";
        Label5.Text = "身份证号";
        draw_hint.Visible = false;
        draw_course.Visible = false;
        choise.Visible = false;
        Gridview1.Visible = false;

    }
    protected void show_garde(object sender, EventArgs e)
    {
        draw_hint.Visible = false;
    }
    protected void Retrieval_Course(object sender, EventArgs e)
    {
        choise.Visible = true;
        draw_course.Visible = true;
        draw_hint.Visible = false;
    }
    protected void show_course(object sender, EventArgs e)
    {

       // Gridview1.Visible = true;
        click.Visible = true;
        Gridview1.CssClass = "text_align";
        draw_hint.Visible = false;
        SqlConnection sqlconn = new SqlConnection("Integrated Security=true; database=StudentSystem; Server=localhost");
        sqlconn.Open();
        SqlCommand dr = new SqlCommand();
        //SqlDataReader sda = dr.ExecuteReader();
        SqlDataAdapter dt = new SqlDataAdapter
         ("select CN as 课程名称,CG as 学分 from C where CNO not in(select CNO from s_grade where sno='" + Session["Student_number"].ToString() + "')", sqlconn);
            DataSet ds = new DataSet();
            dt.Fill(ds);
            if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                this.Gridview1.DataSource = ds;
                this.Gridview1.DataBind();
                Gridview1.Visible = true;
                Gridview1.CssClass = "text_align";
                sqlconn.Close();
            }
            else
            {
                draw_hint.Text = "没有可选的课程";
                draw_hint.Visible = true;
                choise.Visible = false;
                draw_course.Visible = false;
                click.Visible = false;
            }
            
        
    }
    protected void click_data(object sender, EventArgs e)
    {
        int data_count = Gridview1.Rows.Count;
        SqlConnection sqlconn = new SqlConnection("Integrated Security=true; database=StudentSystem; Server=localhost");
       // Response.Write("<script>alert('" + data_count + "')</script>");
        for (int i = 0; i < data_count; i++)
        {
            CheckBox chk = (CheckBox)Gridview1.Rows[i].Cells[2].FindControl("check1");
            string cn = Gridview1.Rows[i].Cells[0].Text.ToString();
           // Response.Write("<script>alert('"+cn+"')</script>");
            if (chk.Checked==true)
            {
                
                sqlconn.Open();
                SqlCommand dr1 = new SqlCommand
                    ("select cno from c where cn='"+cn+"'",sqlconn);
                SqlDataReader sda1= dr1.ExecuteReader();
                if (sda1.Read())
                {
                    string  cno = sda1["cno"].ToString();
                    sqlconn.Close();
                    sqlconn.Open();
                    SqlCommand dr = new SqlCommand
                        ("insert into s_grade(sno,cno) values('" + Session["Student_number"].ToString() + "','" + cno + "')", sqlconn);
                    SqlDataReader sda = dr.ExecuteReader();
                    sqlconn.Close();
                    draw_hint.Text = "选择课程完成";
                }
                else
                {   
                    sqlconn.Close();
                }      
            }
        }
        choise.Visible = false;
        draw_course.Visible = false;
        click.Visible = false;
        Gridview1.Visible = false;
        draw_hint.Visible = true;
       

    }
    protected void show_choice(object sender, EventArgs e)
    {
        SqlConnection sqlconn = new SqlConnection("Integrated Security=true; database=StudentSystem; Server=localhost");
        SqlCommand dr1 = new SqlCommand
("select cn from c,s_grade where c.cno=(select cno from s_grade where s_grade.sno='" + Session["Student_number"].ToString() + "')", sqlconn);
        DataSet ds = new DataSet();
        SqlDataAdapter ap = new SqlDataAdapter("select cn as 课程名称,cg as 学分 from c where cno in(select cno from s_grade where sno='" + Session["Student_number"].ToString() + "')",sqlconn);
        ap.Fill(ds);
        sqlconn.Close();
        DataGrid1.DataSource = ds;
        DataGrid1.DataBind();
        DataGrid1.CssClass = "text_align";
        choise.Visible = false;
        draw_course.Visible = false;
        Gridview1.Visible = false;
    }
    protected void show_gardes(object sender, EventArgs e)
    {
        SqlConnection sqlconn = new SqlConnection("Integrated Security=true; database=StudentSystem; Server=localhost");
        sqlconn.Open();
        DataSet ds = new DataSet();
        SqlDataAdapter ap = new SqlDataAdapter("select cn as 课程名称,grade as 成绩 from s_grade,C where s_grade.cno=c.CNO and sno='" + Session["Student_number"].ToString() + "'", sqlconn);
        ap.Fill(ds);
        DataGrid2.DataSource = ds;
        DataGrid2.DataBind();
        sqlconn.Close();
        DataGrid2.CssClass = "text_align";
        choise.Visible = false;
        draw_course.Visible = false;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:18288/Default.aspx");
    }
}
