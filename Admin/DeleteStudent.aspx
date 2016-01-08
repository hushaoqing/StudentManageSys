<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteStudent.aspx.cs" Inherits="Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <div align="center">
    <form id="form1" runat="server">
    <div align="left">
    
    <asp:Button ID="Button2" runat="server" Text="返回" Font-Size="Large" OnClick="Button2_Click" />
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="删除学生信息" Font-Size="XX-Large"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        学生姓名&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="stu_name" DataValueField="stu_name" Width="200px" Font-Size="Large">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:comm %>" SelectCommand="SELECT [stu_name] FROM [login_Student]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="删除" Font-Bold="True" Font-Size="Large" OnClick="Button1_Click" />
    </form></div>
</body>
</html>
