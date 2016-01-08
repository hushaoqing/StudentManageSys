<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Grade.aspx.cs" Inherits="Grade" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="Button1" runat="server" Text="返回" Font-Size="Large" OnClick="Button1_Click1" />
    <div align="center">
    
        
    
        <asp:Table ID="Table1" runat="server" Height="227px" Width="411px">
            <asp:TableRow runat="server"><asp:TableCell runat="server" HorizontalAlign="Center" Font-Size="XX-Large">查询学生成绩<br/><br/><br/></asp:TableCell></asp:TableRow>
            <asp:TableRow runat="server"><asp:TableCell runat="server">
                姓 &nbsp;    名 &nbsp;  <asp:TextBox ID="TextBox1" runat="server" Width="200"></asp:TextBox></asp:TableCell></asp:TableRow>
            <asp:TableRow runat="server"><asp:TableCell runat="server"><br/><br/>
                课程名 &nbsp; <asp:TextBox ID="TextBox2" runat="server" Width="200"></asp:TextBox></asp:TableCell></asp:TableRow>
             <asp:TableRow runat="server"><asp:TableCell runat="server"><br/><br/>
                 <asp:Label ID="Label2" runat="server" Text="成 &nbsp;  绩"></asp:Label>   &nbsp; <asp:Label ID="Label3" runat="server" Text=""></asp:Label></asp:TableCell></asp:TableRow>
            <asp:TableRow runat="server"><asp:TableCell runat="server">
                <asp:Label ID="Label1" runat="server" Text="成  &nbsp;   绩"></asp:Label>  &nbsp; &nbsp;  <asp:TextBox ID="TextBox3" runat="server" Width="200"></asp:TextBox></asp:TableCell></asp:TableRow>
        <asp:TableRow runat="server"><asp:TableCell runat="server" >
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></asp:TableCell></asp:TableRow>
        </asp:Table>
    
    </div><div align="center">
            <br />
            <br />
            <br />
            <br />
        <asp:Button ID="chaxun" runat="server" Font-Size="Large" Text="查询" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="xiugai" runat="server" Font-Size="Large" Text="修改" OnClick="xiugai_Click" />（若要修改成绩，填入成绩点击修改就行）</div>
    </form>
</body>
</html>
