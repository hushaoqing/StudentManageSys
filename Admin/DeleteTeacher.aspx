<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteTeacher.aspx.cs" Inherits="DeleteTeacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body><div>
    
    </div>
    <div align="center">
    <form id="form1" runat="server">
    <div align="left">
        <asp:Button ID="Button1" runat="server" Font-Size="Large" Text="返回" OnClick="Button1_Click" />
    </div>
        <asp:Label ID="Label1" runat="server" Text="删除教师信息" Font-Size="XX-Large"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        教师姓名&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" DataSourceID="SqlDataSource1" DataTextField="Tname" DataValueField="Tname" Font-Size="Large">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:comm %>" SelectCommand="SELECT [Tname] FROM [login_teacher]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Font-Size="Large" OnClick="Button2_Click" Text="删除" />
    </form></div>
</body>
</html>
