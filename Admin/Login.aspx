<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="CSS.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="login">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Strconn %>" SelectCommand="SELECT * FROM [login_admin]"></asp:SqlDataSource>
        <br />
        <div><asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="管理员登陆界面"></asp:Label>
    
            <br />
            <br />
    
    </div>
        <p>
            账号&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" Width="120px"></asp:TextBox>
        </p>
        <p>
            用户名 
            <asp:TextBox ID="TextBox3" runat="server" Width="120px"></asp:TextBox>
        </p>
        <p>
            密码&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="120px"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <asp:Button ID="Button1" runat="server" Text="登陆" OnClick="Button1_Click" /></div>
    </form>
</body>
</html>
