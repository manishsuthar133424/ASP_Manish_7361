<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculater.aspx.cs" Inherits="Calculater.Calculater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Enter The Number 1 "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Enter The Number 2 "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" Text="+" OnClick="Button1_Click" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="-" OnClick="Button2_Click" />
&nbsp;<asp:Button ID="Button3" runat="server" Text="*" OnClick="Button3_Click" />
&nbsp;<asp:Button ID="Button4" runat="server" Text="/" OnClick="Button4_Click" style="width: 18px" />
        <p>
            <asp:Label ID="Label3" runat="server" Text="Answare "></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="check" />
    </form>
</body>
</html>
