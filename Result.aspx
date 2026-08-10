<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="MyApp4.Result" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Result</title>
</head>
<body>

<form id="form1" runat="server">

<h2>Student Result</h2>

Roll No :
<asp:Label ID="lblRoll" runat="server"></asp:Label>

<br /><br />

Name :
<asp:Label ID="lblName" runat="server"></asp:Label>

<br /><br />

Percentage :
<asp:Label ID="lblPer" runat="server"></asp:Label>

<br /><br />

Grade :
<asp:Label ID="lblGrade" runat="server"></asp:Label>

<br /><br />

Result :
<asp:Label ID="lblResult" runat="server"></asp:Label>

</form>

</body>
</html>