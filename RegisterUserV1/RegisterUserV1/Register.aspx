<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="RegisterUserV1.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblcaptcha" runat="server" Font-Size="X-Large" Text="Enter Captcha :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="imgcaptcha" runat="server" Height="80px" ImageUrl="~/GenCaptcha.aspx" Width="140px" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtcaptcha" runat="server" Font-Size="X-Large"></asp:TextBox>
            <asp:CustomValidator ID="valcaptcha" runat="server" ControlToValidate="txtcaptcha" ErrorMessage="Invalid Captcha." Font-Size="Large" ForeColor="#CC0000" OnServerValidate="valcaptcha_ServerValidate"></asp:CustomValidator>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbldob" runat="server" Font-Size="X-Large" Text="Date of Birth :"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtdob" runat="server" Font-Size="X-Large" TextMode="Date"></asp:TextBox>
            <asp:CustomValidator ID="valdob" runat="server" ControlToValidate="txtdob" ErrorMessage="Invalid age." Font-Size="Large" ForeColor="#CC0000" OnServerValidate="valdob_ServerValidate"></asp:CustomValidator>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnreg" runat="server" Font-Size="X-Large" style="margin-left: 51px" Text="Register" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
