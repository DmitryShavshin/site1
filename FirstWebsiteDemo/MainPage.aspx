<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="FirstWebsiteDemo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
       <link type="text/css" href="CSS/CssBackground.css" rel="stylesheet" />
       <style type="text/css">
.menu{
    padding: 0;
    margin-right: 30%;
    float: left;
    width: 581px;
    background-color: #fff;
}
nav {
   margin: 0 auto;
   padding: 0;
}
nav ul {
    list-style: none;
    display: flex;
    justify-content: flex-end;
}
nav ul li {
    margin: 0 auto;
    position: relative;
    border-left: 1px solid #808080;
    border-right: 1px solid #808080;
    top: 0px;
    left: 0px;
}
nav ul li a{
    display: block;
    background: rgb(149,149,149); /* Old browsers */
    background: -moz-linear-gradient(top, rgba(149,149,149,1) 0%, rgba(13,13,13,1) 46%, rgba(1,1,1,1) 50%, rgba(10,10,10,1) 53%, rgba(78,78,78,1) 76%, rgba(56,56,56,1) 87%, rgba(27,27,27,1) 100%); /* FF3.6-15 */
    background: -webkit-linear-gradient(top, rgba(149,149,149,1) 0%,rgba(13,13,13,1) 46%,rgba(1,1,1,1) 50%,rgba(10,10,10,1) 53%,rgba(78,78,78,1) 76%,rgba(56,56,56,1) 87%,rgba(27,27,27,1) 100%); /* Chrome10-25,Safari5.1-6 */
    background: linear-gradient(to bottom, rgba(149,149,149,1) 0%,rgba(13,13,13,1) 46%,rgba(1,1,1,1) 50%,rgba(10,10,10,1) 53%,rgba(78,78,78,1) 76%,rgba(56,56,56,1) 87%,rgba(27,27,27,1) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#959595', endColorstr='#1b1b1b',GradientType=0 ); /* IE6-9 */
    font-size: 15px;
    padding: 10px 35px 10px 35px;
    color: #fff;
    text-decoration: none;
    text-transform: uppercase;
    transition: 0.7s all;
}
nav ul li a:hover, nav ul li a:active{  
    background: rgb(255,255,255); /* Old browsers */
    background: -moz-linear-gradient(top, rgba(255,255,255,1) 0%, rgba(241,241,241,1) 50%, rgba(225,225,225,1) 51%, rgba(246,246,246,1) 100%); /* FF3.6-15 */
    background: -webkit-linear-gradient(top, rgba(255,255,255,1) 0%,rgba(241,241,241,1) 50%,rgba(225,225,225,1) 51%,rgba(246,246,246,1) 100%); /* Chrome10-25,Safari5.1-6 */
    background: linear-gradient(to bottom, rgba(255,255,255,1) 0%,rgba(241,241,241,1) 50%,rgba(225,225,225,1) 51%,rgba(246,246,246,1) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#f6f6f6',GradientType=0 ); /* IE6-9 */
    padding: 10px 20px 10px 50px;
    color: #000000;
    transition: 0.7s all;
}
.menuDrop{
     position:absolute;
     display: block;
     padding: 0;
     display: none;
     transition: 0.7s all;
 }
nav li:hover > ul{
    display: inline;
    transition: 0.7s all;
}
.menuDrop a{
     font-size: 10px; 
     background: #808080;  
     padding: 10px 45px 10px 15px;
}
.menuDrop a:hover, .menuDrop a:active{
    background: #373432;
    color: #fff;
    transition: 0.7s all;
    padding: 10px 20px 10px 40px;
}
.menuList::after{
    content: " ";
    position: absolute;
    border: 4px solid;
    border-color: #808080 transparent transparent transparent;
    bottom: 1px;
    right: 45%;
    transition: 0.5s;
}
.menuList:hover::after{
    border-color: #fff transparent transparent transparent;
    transform: scaleY(-1)
}
header{
    margin: 0 10%;
    height: 37px;
    width: 80%;
    padding: 0;
    background-color: rgba(13,13,13,1);
    
}
.registr{
    padding: 0;
    margin: 0 auto;
    display: inline;
    width: 200px;
    height: 70px; 
}
.registr a{
    background-color: rgba(78,78,78,1);
    color: #fff;
    font-size: 15px;
    padding: 10px;
    text-decoration: none;
}

      </style>
</head>
<body>
     <header>
            <div class="menu">
              <nav >
                  <ul>
                    <li class="menuList"><a href="#">MENU</a>
                        <ul class="menuDrop">
                            <li><a href="#">MENU_1.1</a></li>
                            <li><a href="#">MENU_1.2</a></li>
                            <li><a href="#">MENU_1.3</a></li>
                            <li><a href="#">MENU_1.4</a></li>
                        </ul>
                    </li>
                    <li><a href="#">MENU</a></li>           
                    <li class="menuList"><a href="#">MENU</a>
                        <ul class="menuDrop">
                            <li><a href="#">MENU_2.1</a></li>
                            <li><a href="#">MENU_2.2</a></li>
                            <li><a href="#">MENU_2.3</a></li>
                            <li><a href="#">MENU_2.4</a></li>
                        </ul>
                    </li>
                    <li><a href="#">MENU</a></li>           
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
         <div class="registr">
                        <a href="RegistrationForm.aspx">Registration</a><a href="LoginForm.aspx">Login Now</a>
                  </div>                      
     </header>
         <form id="form1" runat="server">
         </form>
</body>
</html>
