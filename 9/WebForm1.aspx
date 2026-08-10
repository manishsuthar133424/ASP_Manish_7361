<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MyApp4.WebForm1" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Student Marksheet</title>
</head>
<body>
<form id="form1" runat="server">

Roll No :
<asp:TextBox ID="txtRoll" runat="server"></asp:TextBox>

<br /><br />

Name :
<asp:TextBox ID="txtName" runat="server"></asp:TextBox>

<br /><br />

Course :
<asp:TextBox ID="txtCourse" runat="server"></asp:TextBox>

<br /><br />

Semester :
<asp:TextBox ID="txtSem" runat="server"></asp:TextBox>

<br /><br />

Email :
<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

<br /><br />

Mobile :
<asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>


<br /><br />

Subject 1 :
<asp:TextBox ID="txtM1" runat="server"></asp:TextBox>

<br /><br />

Subject 2 :
<asp:TextBox ID="txtM2" runat="server"></asp:TextBox>

<br /><br />

Subject 3 :
<asp:TextBox ID="txtM3" runat="server"></asp:TextBox>

<br /><br />

Subject 4 :
<asp:TextBox ID="txtM4" runat="server"></asp:TextBox>

<br /><br />

Subject 5 :
<asp:TextBox ID="txtM5" runat="server"></asp:TextBox>

<br /><br />

<asp:Button ID="Button1" runat="server"
Text="Submit"
OnClick="Button1_Click" />

</form>
</body>
</html>