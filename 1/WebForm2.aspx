<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="First_WEB_1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        Enter The Number <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><hr />
        <asp:Button ID="Button1" runat="server" Text="Run" OnClick="Button1_Click" /><br /><hr />
        <asp:TextBox ID="TextBox2" runat="server" Wrap="true" Width="100%" TextMode="MultiLine"></asp:TextBox>
        <div>
        </div>
    </form>
</body>
</html>
