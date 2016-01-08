<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgetpassword.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="pass.css" rel="stylesheet" type="text/css" />
    <title>初始化学生密码</title>
</head>
<body>
    <h5>初始化学生密码</h5>
    <form id="form1" runat="server">
    <div>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;学号：<asp:TextBox runat="server" ID="sno"></asp:TextBox></p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;姓名：<asp:TextBox runat="server" ID="name"></asp:TextBox></p>
        <p>身份证：<asp:TextBox runat="server" ID="Id"></asp:TextBox></p>
        <p>
            <span><asp:Button runat="server" Text="下一步" OnClick="nextpsw"/></span>
            <span><input type="reset"  value="重置"/></span>
        </p>
    </div>
    </form>
</body>
</html>
