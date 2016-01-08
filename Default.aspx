<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="StyleSheet.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    function forgetpass() {
        var width1 = Math.round((window.screen.width - 400) / 2);
        var height1 = Math.round((window.screen.height - 400) / 2);
        window.open('Check_exchange_psw/forgetpassword.aspx', 'newwindow', 'height=400,width=400,top=' + height1 + ',left=' + width1 + ',toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no')
}
</script>
    <title>学生管理系统</title>
</head>
<body ><%--hint提示信息 --%>
    <form id="form1" runat="server" >
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:comm %>" SelectCommand="SELECT * FROM [login_admin]"></asp:SqlDataSource>
    <div class="back">
        <h1 class="top1">学生管理系统</h1>
        <p>
            <asp:RadioButton ID="RadioButton1" autopostback="true" runat="server" OnCheckedChanged="exchange"  Checked="true" GroupName="uses"/>学生 &nbsp; &nbsp;
            <asp:RadioButton ID="RadioButton2" autopostback="true" runat="server" OnCheckedChanged="exchange" GroupName="uses" />教师 &nbsp; &nbsp;
            <asp:RadioButton ID="RadioButton3" autopostback="true" runat="server" OnCheckedChanged="exchange" GroupName="uses" />管理员   &nbsp;
           </p>
	      <p>
          <asp:Label runat="server" ID="pan1">学号:</asp:Label> &nbsp;
              <asp:TextBox ID="p_user" runat="server" Width="150px" ></asp:TextBox>
          </p>
	      <p><span>密码:</span> &nbsp;
          <asp:TextBox ID="p_password" runat="server" TextMode="Password" Width="150px" ></asp:TextBox>
          </p>
          <p>&nbsp;&nbsp;
            <asp:Button ID="Login" runat="server" Text="登录"  OnClick="Login_click" />&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="forgetpassword" runat="server" Text="忘记密码" OnClick="forget_psw" />
          </p>
    </div>
    </form>
</body>
</html>
