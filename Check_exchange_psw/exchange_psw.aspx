<%@ Page Language="C#" AutoEventWireup="true" CodeFile="exchange_psw.aspx.cs" Inherits="Check_exchange_psw_exchange_psw" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="pass.css" rel="stylesheet" type="text/css" />
    <title>更改密码</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h5>更改密码</h5>
    </div>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;新密码：<asp:TextBox runat="server" ID="change1_psw" TextMode="Password"></asp:TextBox></p>
       <span><asp:Label runat="server" ID="hint" Visible="false" Text="*密码位数为6-10" ForeColor="Red"></asp:Label></span>
        <p>确认密码：<asp:TextBox runat="server" ID="check1_psw" TextMode="Password"></asp:TextBox></p>
        <p><span><asp:Button  runat="server" ID="chang_Data" Text="确认" OnClick="checkbit"/></span>
           <span><input type="reset" value="取消"/></span>
        </p>
    </form>
</body>
</html>
