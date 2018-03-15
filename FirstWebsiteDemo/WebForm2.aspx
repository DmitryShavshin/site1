<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="FirstWebsiteDemo.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Text<br />
        <asp:FileUpload ID="FileUpload1" runat="server" /><br />
        <asp:FileUpload ID="FileUpload2" runat="server" /><br />
        <asp:Button ID="btnLoad" runat="server" Text="Load" OnClick="btnLoad_Click" /><br />
    </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
