<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsertTeacher.aspx.cs" Inherits="InsertTeacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    
        <asp:Button ID="Button2" runat="server" Font-Size="Large" OnClick="Button2_Click" Text="返回" />
   
        <asp:Table ID="Table1" runat="server" Width="411px" Height="265px" align="center">
            <asp:TableRow><asp:TableCell HorizontalAlign="Center" Font-Size="XX-Large">录入教师信息</asp:TableCell></asp:TableRow>
            <asp:TableRow runat="server"><asp:TableCell runat="server">工&nbsp; &nbsp;       号      <asp:TextBox ID="TextBox1" runat="server" Width="200"></asp:TextBox></asp:TableCell></asp:TableRow>
             <asp:TableRow runat="server"><asp:TableCell runat="server">姓&nbsp; &nbsp;       名      <asp:TextBox ID="TextBox3" runat="server" Width="200"></asp:TextBox></asp:TableCell></asp:TableRow>
            <asp:TableRow runat="server"><asp:TableCell runat="server">课程编号       <asp:TextBox ID="TextBox2" runat="server" Width="200"></asp:TextBox></asp:TableCell> </asp:TableRow>
            
            <asp:TableRow runat="server"><asp:TableCell runat="server">密&nbsp;&nbsp;        码      <asp:TextBox ID="TextBox4" runat="server" Width="200"></asp:TextBox></asp:TableCell></asp:TableRow>
            
            <asp:TableRow runat="server"><asp:TableCell runat="server"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></asp:TableCell></asp:TableRow>
        </asp:Table>
    
        <br />
        <br />
    
 
       <div align="center"> <asp:Button ID="Button1" runat="server" Font-Size="X-Large" style="width: 70px" Text="提交" OnClick="Button1_Click" />&nbsp;</div>
    </form>
</body>
</html>
