<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacher_window.aspx.cs" Inherits="teacher_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="teacher.css" rel="stylesheet" type="text/css" />
    <title> 教师</title>
</head>
<body>

    <form id="form1" runat="server">
        <asp:Button ID="Button2" runat="server" Text="退出"  Font-Size="X-Large" OnClick="Button2_Click"/>
        <h2>教师界面</h2>
    <div>  
        <span class="input"><asp:Button runat="server" Text="登记成绩"  OnClick="draw_student"/></span>
    </div>
    <div>
        <asp:GridView runat="server" AutoGenerateColumns="False" ID="Gridview2" 
            Height="121px" Width="384px"  Visible="False" >
            <Columns>
                <asp:BoundField DataField="学号" HeaderText="学号" SortExpression="sno" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" 
                    SortExpression="stu_name" />
            </Columns>
            <Columns>
             <asp:TemplateField HeaderText="分数">
                    <ItemTemplate>
                    <asp:TextBox Width="28px" runat="server" ID="cin_grade" BorderStyle="None"></asp:TextBox>
                    </ItemTemplate>
                    </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <div><asp:Label runat="server" ID="draw_information"></asp:Label></div>
        <asp:Button runat="server"  Text="提交"  ID="button1" Visible="false" OnClick="click"/>
    </div>
    </form>
</body>
</html>
