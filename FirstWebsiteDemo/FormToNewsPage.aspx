<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormToNewsPage.aspx.cs" Inherits="FirstWebsiteDemo.FormToNewsPage" %>
<%@ Import Namespace="FirstWebsiteDemo" %> 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title></title>
<link type="text/css" href="CSS/CssBackground.css" rel="stylesheet" />
<link type="text/css" href="CSS/ScrollCss.css"/ rel="stylesheet" />
<link type="text/css" href="CSS/MenuCss.css" rel="stylesheet" />
<link type="text/css" href="CSS/logoCss.css" rel="stylesheet" />
<style type="text/css">
.mainContent{
    margin-top: 10px;
    width: 55%;
    height: 1040px;
    background: rgba(55, 52, 52, 0.7);
    float: left;
    padding: 10px;
    overflow: auto;
}
.mainContent2{
    margin: 10px 0 10px 0;
    width: 55%;
    height: 500px;
    background: rgba(55, 52, 52, 0.7);
    float: left;
    padding: 10px;
    overflow: auto;
}
.mainContent3{
    margin: 10px 0 10px 0;
    width: 95%;
    height: 500px;
    background: rgba(55, 52, 52, 0.7);
    float: left;
    padding: 10px;
    overflow: auto;
}
.sidebar{
    margin: 10px 0 10px 0;
    padding: 10px;
    width: 30%;
    height: 1030px;
    float: right;
    top: auto;
    background: rgba(55, 52, 52, 0.7);
    overflow: auto;
}
iframe{
    width: 97%;
    height: 100px;
    background-color: rgba(78,78,78,1);
    border: none;
}
.news{
    margin: 10px 0;
    width: 97%;
    height: 25%;
    background-color: rgba(78,78,78,1);
}
body {
    background: url(../img/background.jpg) center center no-repeat;
    min-height: 100%;
    min-width: 100%;
    margin: 0 auto;
    padding: 0;
    background-repeat: repeat;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="logo">
            <a href="FormToMainPage.aspx"><img src="img/labelBlack.png" /></a>
        </div>
        <header>
            <div class="menu">
              <nav>
                  <ul>
                    <li class="menuList"><a href="#">MENU</a>
                        <ul class="menuDrop">
                            <li><a href="#">MENU_1.1</a></li>
                            <li><a href="#">MENU_1.2</a></li>
                            <li><a href="#">MENU_1.3</a></li>
                            <li><a href="#">MENU_1.4</a></li>
                        </ul>
                    </li>
                    <li><a href="FormToNewsPage.aspx">NEWS</a></li>           
                    <li class="menuList"><a href="#">MENU</a>
                        <ul class="menuDrop">
                            <li><a href="#">MENU_2.1</a></li>
                            <li><a href="#">MENU_2.2</a></li>
                            <li><a href="#">MENU_2.3</a></li>
                            <li><a href="#">MENU_2.4</a></li>
                        </ul>
                    </li>
                    <li><a href="FormToDPICalculator.aspx">DPI</a></li>           
                    <li class="menuList"><a href="#">MENU</a>
                        <ul class="menuDrop">
                            <li><a href="#">MENU_3.1</a></li>
                            <li><a href="#">MENU_3.2</a></li>
                            <li><a href="#">MENU_3.3</a></li>
                            <li><a href="#">MENU_3.4</a></li>
                        </ul>
                    </li>
                  </ul>                 
              </nav>  
           </div> 
            <div class="menuRight">
              <nav>
                <ul class="ulReg">
                    <asp:Table runat="server">
                        <asp:TableRow>
                            <asp:TableHeaderCell>
                                <asp:Label ID="lblUser" runat="server"></asp:Label>
                            </asp:TableHeaderCell>
                            <asp:TableHeaderCell>
                                 <asp:Button ID="btnExit" runat="server" Text="Exit" OnClick="btnExit_Click" />
                            </asp:TableHeaderCell>
                        </asp:TableRow>
                    </asp:Table>               
                </ul>
              </nav>     
            </div>                        
         </header>     
        <div class="content">   
            <div class="mainContent">
               <%
                   List<News> news = new List<News>();
                   DataEccessObject DAO = new DataEccessObject();
                   news = DAO.getNews();
                   for (int i = news.Count -1; i >= 0; i--)
                   {%>
                       <iframe src="<%=news[i].Title %>.html" ></iframe><br />
                      <%-- <a href="<% =news[i].NewsName %>.html" target="_blank">Read more</a><br />--%>
                       <hr />
                   <%}
               %>       
            </div>            
         <%--<div class="sidebar">
                 <%for (int i = news.Count -1; i >= 0; i--)
                   {%>
                       <iframe src="<%=news[i].Title %>.html" ></iframe><br />
                      <%-- <a href="<% =news[i].NewsName %>.html" target="_blank">Read more</a><br />
                       <hr />
                   <%}%>
            </div>
           <div class="mainContent2">
                <%
                    int countNews3 = (int)Session["countNews"];
                    for (int i = 1; i <= countNews3; i++)
                    {%>
                        <iframe src="news<% =i %>.html"></iframe>
                  <%}
                     %>
            </div>
            <div class="mainContent3">
                 <%
                    int countNews4 = (int)Session["countNews"];
                    for (int i = 1; i <= countNews4; i++)
                    {%>
                        <iframe src="news<% =i %>.html"></iframe>
                  <%}
                     %>
            </div> --%>    
        </div>
    </form>
</body>
</html>
