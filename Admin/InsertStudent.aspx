<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsertStudent.aspx.cs" Inherits="InsertStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Button ID="Button2" runat="server" Font-Size="Large" OnClick="Button2_Click" Text="返回" />
        <asp:Table ID="Table1" runat="server" Height="257px" Width="294px" align="center">
            <asp:TableRow><asp:TableCell HorizontalAlign="Center" Font-Size="XX-Large">录入学生信息</asp:TableCell></asp:TableRow>
            <asp:TableRow><asp:TableCell>学  号  <asp:TextBox ID="SnoTB" runat="server" Width="200"></asp:TextBox></asp:TableCell></asp:TableRow>
            <asp:TableRow><asp:TableCell>姓  名  <asp:TextBox ID="SnameTB" runat="server" Width="200"></asp:TextBox></asp:TableCell></asp:TableRow>
            <asp:TableRow><asp:TableCell>性  别  <asp:TextBox ID="SexTB" runat="server" Width="200"></asp:TextBox></asp:TableCell></asp:TableRow>
            <asp:TableRow><asp:TableCell>电  话  <asp:TextBox ID="TelTB" runat="server" Width="200"></asp:TextBox></asp:TableCell></asp:TableRow>
           
             <asp:TableRow><asp:TableCell>密  码  <asp:TextBox ID="TextBox1" runat="server" Width="200"></asp:TextBox></asp:TableCell></asp:TableRow>
            <asp:TableRow><asp:TableCell>身份证号  <asp:TextBox ID="TextBox2" runat="server" Width="200"></asp:TextBox></asp:TableCell></asp:TableRow>
             <asp:TableRow><asp:TableCell>
                <asp:Label ID="MessageTB" runat="server" Text="MessageTB"></asp:Label></asp:TableCell></asp:TableRow>
        </asp:Table>
        <div align="center"><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交" Font-Size="XX-Large" />
        </div><br />
        <br />
    </form>
</body>
</html>
