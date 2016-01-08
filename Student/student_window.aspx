<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_window.aspx.cs" Inherits="Student_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<%--<base target="main"/> --%>  
<link href="Student_window.css" rel="stylesheet" type="text/css" />
    <title>学生信息管理系统</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="Button1" runat="server" Text="退出" Font-Size="X-Large" OnClick="Button1_Click" />
    <div class="top">
        <h1>学生管理系统</h1>
            <h2>学生:<asp:Label runat="server" ID="user_name"></asp:Label>&nbsp;&nbsp;计科2012级</h2>
    </div>
    <div class="left">   
        <p class="positon"><asp:LinkButton  runat="server" ID="ss" OnClick ="student_message" >基本信息</asp:LinkButton></p>
        <div><asp:LinkButton runat="server"  OnClick ="show_choice_message" >选课</asp:LinkButton></div>
        <div class="two"><asp:LinkButton ID="choice_course1" runat="server" Visible="false" OnClick="Retrieval_Course">正选<br /><br /></asp:LinkButton><%-- Retrieval Course检索课程--%>
                         <asp:LinkButton ID="choice_course2" runat="server" Visible="false" OnClick="show_choice">正选结果</asp:LinkButton>          
        </div>
        <div><asp:LinkButton runat="server" OnClick="show_gardes">成绩查询</asp:LinkButton></div>
    </div>
    <div class="main">
        <div>
            <asp:Label runat="server" ID="main" ViewStateMode="Disabled">
              <table  >
                  <tr>
                    <td><asp:Label runat="server" ID="Label1" ></asp:Label></td>
                    <td><asp:Label runat="server" ID="Student_sno"></asp:Label></td>
                  </tr>
                  <tr>
                    <td><asp:Label runat="server" ID="Label2"></asp:Label></td>
                    <td><asp:Label runat="server" ID="Student_sname" ></asp:Label></td>
                  </tr>
                  <tr>
                    <td><asp:Label runat="server" ID="Label3"></asp:Label></td>
                    <td><asp:Label runat="server" ID="Student_sex" ></asp:Label></td>
                  </tr>
                  <tr>
                    <td><asp:Label runat="server" ID="Label4"></asp:Label></td>
                    <td><asp:Label runat="server" ID="Student_tel"></asp:Label></td>
                  </tr>
                  <tr>
                    <td><asp:Label runat="server" ID="Label5"></asp:Label></td>
                    <td><asp:Label runat="server" ID="Student_ID"></asp:Label></td>
                  </tr>
              </table>
            </asp:Label>
        </div>
        <div id="course_information">
            <asp:Label runat="server"  CssClass="location" ID="choise" Visible="false" Text="可选课程"></asp:Label>
            <asp:Button runat="server"  ID="draw_course" Visible="false" Text="检索" OnClick="show_course" />
        <asp:GridView runat="server" ID="Gridview1" AutoGenerateColumns="false" 
                Width="323px">
        <Columns>
            <asp:BoundField HeaderText="课程名称" DataField="课程名称"  />
            <asp:BoundField HeaderText="学分" DataField="学分" />
            <asp:TemplateField><ItemTemplate>
            <asp:CheckBox  runat="server" ID="check1"/>
            </ItemTemplate></asp:TemplateField>
        </Columns>
    </asp:GridView>
            <asp:Button  runat="server" ViewStateMode="Disabled" CssClass="location2" ID="click" OnClick="click_data" Text="提交" Visible="false"/>
            <asp:Label runat="server" ViewStateMode="Disabled" ID="draw_hint"></asp:Label>
        </div>
        <div id="grade_result">
            <asp:DataGrid runat="server" ID="DataGrid1" ViewStateMode="Disabled" Height="109px" Width="329px"></asp:DataGrid>
        </div>
        <div id="show_grade">
            <asp:DataGrid runat="server" ID="DataGrid2" ViewStateMode="Disabled" 
                Width="327px"></asp:DataGrid>
        </div>
    </div>
 </form>
</body>
</html>
