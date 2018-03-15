<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPageDemo.aspx.cs" Inherits="FirstWebsiteDemo.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="CSS/CssBackground.css" rel="stylesheet" />
    <style type="text/css">
.content{
      margin: 0 10%;        
      background-color: rgba(55, 52, 52, 0.7);
      width: 80%;
      /*height: 1500px;*/
}
footer{
      position: static;
      background-color: #06059a;
      color: #fff;
      width: 80%;
      margin: 0 10%;
}
nav{
    width: 100px;
}
.menuList{
    position: relative;
}
.menuList::after{
    content: " ";
    position: absolute;
    border: 4px solid;
    border-color: transparent transparent transparent #fff;
    top: 40%;
    right:5px;
    transition: 0.5s;
}
.menuList:hover::after{
    border-color: transparent transparent transparent #808080;
    transform: scaleX(-1)
}
.menuDrop{
    position: absolute;
    left: 100%;
    opacity: 0;
    top: -99999em;
    transition: 0.5s opacity;
    border-left: 3px solid transparent;
}
.menuList:hover .menuDrop{
    opacity: 1;
    top: 0;
   
}
ul{
     margin: 0 auto;
     padding: 0;
     list-style: none;
 }
li:first-child a, li .menuDrop li:first-child a{
    border-radius: 3px 3px 0 0;
}
li:last-child a, li .menuDrop li:last-child a{
    border-radius: 0 0 3px 3px;
    border-bottom: 0;
}
li .menuDrop li a{
    border-radius: 0;
    border-bottom: 1px solid #808080;
}
a{
    text-decoration: none;
    background: #e90a0a;
    padding: 10px;
    color: #fff;
    display: block;
    border-bottom: 1px solid #808080;
    transition: 0.5s;
}
a:hover{
    background: #c30303;
    padding: 10px 0 10px 20px;
}
    </style>
</head>
<body>
    <header>
      
    </header>
    <div class="content">
        ghfgh
    </div>
    <footer>
        rwerw etwerwer<br />
        werehsdfbdfjkhjl<br />

    </footer>
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
    
</body>
</html>
