<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #top {
            text-align:center;
            padding-bottom:50px;
        }
        #left {
            width: 231px;
            float:left;
            padding-right:10px;
            padding-top:20px;
            height: 385px;
        }
        #right {
            padding-left:100px;
            width: 325px;
            float:left;
           
        }
        #form1 {
            height: 578px;
            width: 867px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   
    
        <div id="top"><asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="管理员界面"></asp:Label>
            <br />
            <br />
        </div>
    
        <div id="left"><asp:Button ID="Button1" runat="server" BorderStyle="Solid" OnClick="Button1_Click" Text="查看学生信息" />
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" BorderStyle="Solid" OnClick="Button4_Click" Text="插入学生信息" />
            <br />
            <br />
            <asp:Button ID="Button6" runat="server" BorderStyle="Solid" OnClick="Button6_Click" Text="删除学生信息" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" BorderStyle="Solid" OnClick="Button2_Click" Text="查看教师信息" />
            <br />
            <br />
            <asp:Button ID="Button5" runat="server" BorderStyle="Solid" Text="插入教师信息" OnClick="Button5_Click" />
            <br />
            <br />
            <asp:Button ID="Button7" runat="server" BorderStyle="Solid" OnClick="Button7_Click" Text="删除教师信息" />
            <br />
            <br />
            <asp:Button ID="Button8" runat="server" BorderStyle="Solid" Text="查看修改成绩" OnClick="Button8_Click" />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" BorderStyle="Solid" Text="返回" OnClick="Button3_Click" style="width: 40px" />
            <br />
            <br />
            <br />
            <br />
        </div>
    
    <div id="right">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="psw,stu_number" DataSourceID="SqlDataSource1" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="psw" HeaderText="psw" ReadOnly="True" SortExpression="psw" />
                <asp:BoundField DataField="stu_number" HeaderText="stu_number" SortExpression="stu_number" ReadOnly="True" />
                <asp:BoundField DataField="stu_name" HeaderText="stu_name" SortExpression="stu_name" />
                <asp:BoundField DataField="stu_sex" HeaderText="stu_sex" SortExpression="stu_sex" />
                <asp:BoundField DataField="stu_tel" HeaderText="stu_tel" SortExpression="stu_tel" />
                <asp:BoundField DataField="stu_id" HeaderText="stu_id" SortExpression="stu_id" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="teacher" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" DataKeyNames="Psw,Teach_num">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="Psw" HeaderText="Psw" SortExpression="Psw" ReadOnly="True" />
                    <asp:BoundField DataField="Teach_num" HeaderText="Teach_num" SortExpression="Teach_num" ReadOnly="True" />
                    <asp:BoundField DataField="Tname" HeaderText="Tname" SortExpression="Tname" />
                    <asp:BoundField DataField="cno" HeaderText="cno" SortExpression="cno" />
                    <asp:BoundField DataField="lo_grade" HeaderText="lo_grade" SortExpression="lo_grade" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            
    
            <asp:SqlDataSource ID="teacher" runat="server" ConnectionString="<%$ ConnectionStrings:comm %>" SelectCommand="SELECT * FROM [login_teacher]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:comm %>" SelectCommand="SELECT * FROM [login_Student]"></asp:SqlDataSource>
   </div>

            <br />
            <br />
    
            <br />
            <br />
    
     </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
