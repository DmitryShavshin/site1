<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormToPageWelcome.aspx.cs" Inherits="FirstWebsiteDemo.FormToPageWelcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title></title>
<link type="text/css" href="CSS/CssBackground.css" rel="stylesheet"/>
<style type="text/css">
.conteiner{          
        margin: 15% 20%;      
        padding: 50px 0 50px 0;  
        background-color: rgba(55, 52, 52, 0.7); 
}
h1{
        color: #fff;
        font-size: 40px;
        text-align: center;
        padding: 0;
        margin: 0;
}
#lblWelcome{
        color: #fff;
        font-size: 17px;
        margin: 0 auto;
        padding: 0;
        text-align: center;
}
p{
        color: #fff;
        font-size: 17px;
        text-align: center;
        padding: 0;
        margin: 5px;
}
a{
        color: #b9afaf;
        font-size: 17px;
        text-decoration: none;
}
a:hover, a:active{
        color: #000;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="conteiner">
            <h1>Hello</h1>
            <p><asp:Label ID="lblWelcome" runat="server" Text="TEST"></asp:Label></p>
            <p>Now you can go to the<a href="<%=Session["page"]%>"> main page </a>of the site,</p>
            <p>for further use of the resource.</p>
        </div>
    </form>
</body>
</html>
