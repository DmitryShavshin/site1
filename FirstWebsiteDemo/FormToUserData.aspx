<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormToUserData.aspx.cs" Inherits="FirstWebsiteDemo.FormToUserData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title></title>
<link type="text/css" href="CSS/CssBackground.css" rel="stylesheet" />
<style type="text/css">
.conteiner{
    background: rgba(55, 52, 52, 0.7);
    position: absolute;
    min-height: 100%;
    top: 75px;
    left: 10%;
    right: 10%;
}
.menu{
    padding: 0;
    margin-left: 0;
    float: left;
    width: 581px;
    color: #fff;
}
nav{
   margin: 0 auto;
   padding: 0;
}
nav ul {
    margin: 0 auto;
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
     z-index: 9999;
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
    height: 40px;
    width: 80%;
    padding: 20px 0;
    background-color: rgba(13,13,13,1);    
}
.ulReg{
    margin: 0 auto;
    padding: 0;
    display: inline-flex;
    justify-content: flex-start;
}
.menuRight{
    padding: 0;
    margin: 0 2%;
    float: right;  
    color: #fff;
}
.content {
    background: rgba(55, 52, 52, 0.7);
    width: 80%;
    position: absolute;
    min-height: 100%;
    top: 79px;
    left: 10%;
    z-index: 1;
}
#btnExit{
    display: block;
    background: rgb(149,149,149); /* Old browsers */
    background: -moz-linear-gradient(top, rgba(149,149,149,1) 0%, rgba(13,13,13,1) 46%, rgba(1,1,1,1) 50%, rgba(10,10,10,1) 53%, rgba(78,78,78,1) 76%, rgba(56,56,56,1) 87%, rgba(27,27,27,1) 100%); /* FF3.6-15 */
    background: -webkit-linear-gradient(top, rgba(149,149,149,1) 0%,rgba(13,13,13,1) 46%,rgba(1,1,1,1) 50%,rgba(10,10,10,1) 53%,rgba(78,78,78,1) 76%,rgba(56,56,56,1) 87%,rgba(27,27,27,1) 100%); /* Chrome10-25,Safari5.1-6 */
    background: linear-gradient(to bottom, rgba(149,149,149,1) 0%,rgba(13,13,13,1) 46%,rgba(1,1,1,1) 50%,rgba(10,10,10,1) 53%,rgba(78,78,78,1) 76%,rgba(56,56,56,1) 87%,rgba(27,27,27,1) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#959595', endColorstr='#1b1b1b',GradientType=0 ); /* IE6-9 */
    font-size: 15px;
    padding: 10px 35px 10px 35px;
    color: #fff;
    border-bottom: none;
    border-top: none;
    border-left: 1px solid #808080;
    border-right: 1px solid #808080;
    text-transform: uppercase;
    transition: 0.7s all;
}
#btnExit:hover, #btnExit:active{
    background: rgb(255,255,255); /* Old browsers */
    background: -moz-linear-gradient(top, rgba(255,255,255,1) 0%, rgba(241,241,241,1) 50%, rgba(225,225,225,1) 51%, rgba(246,246,246,1) 100%); /* FF3.6-15 */
    background: -webkit-linear-gradient(top, rgba(255,255,255,1) 0%,rgba(241,241,241,1) 50%,rgba(225,225,225,1) 51%,rgba(246,246,246,1) 100%); /* Chrome10-25,Safari5.1-6 */
    background: linear-gradient(to bottom, rgba(255,255,255,1) 0%,rgba(241,241,241,1) 50%,rgba(225,225,225,1) 51%,rgba(246,246,246,1) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#f6f6f6',GradientType=0 ); /* IE6-9 */
    padding: 10px 20px 10px 50px;
    color: #000000;
    transition: 0.7s all;
}
#lblUser{
   text-align: center;
}
</style>
</head>
<body>
    <form id="form1" runat="server">  
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
                    <li><a href="FormToNewsPage.aspx">News</a></li>           
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
                                <asp:Label ID="lblUser" runat="server" Text="TEST"></asp:Label>
                            </asp:TableHeaderCell>
                            <asp:TableHeaderCell>
                                 <asp:Button ID="btnExit" CausesValidation="false" runat="server" Text="Exit"  />
                            </asp:TableHeaderCell>
                        </asp:TableRow>
                    </asp:Table>               
                </ul>
              </nav>     
            </div>                        
         </header>     
    <div class="conteiner">
        <asp:Label ID="lblUserData" runat="server" Text="Label"></asp:Label>
        <table>
            <tr>
                <td>Login: </td>
                <td><asp:TextBox ID="txtUserLogin" runat="server"></asp:TextBox></td>
                <td><asp:Button ID="btnChangeLogin" runat="server" Text="Change Login" OnClick="btnChangeLogin_Click" /></td>
                <%--<td><asp:RequiredFieldValidator ID="ReqValidLogin" CausesValidation="false" Display="Dynamic" CssClass="color" ControlToValidate="txtUserLogin" runat="server" ErrorMessage="Empty field"></asp:RequiredFieldValidator></td>--%>
            </tr>
            <tr>
                <td>Name: </td>
                <td><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
                <td><asp:Button ID="btnUserName" runat="server" Text="Change Name" OnClick="btnUserName_Click" /></td>
                <%--<td><asp:RequiredFieldValidator ID="ReqValidName" Display="Dynamic" CssClass="color" ControlToValidate="txtUserName" runat="server" ErrorMessage="Empty field"></asp:RequiredFieldValidator></td>--%>
            </tr>
            <tr>
                <td>Secondname: </td>
                <td><asp:TextBox ID="txtUserSecondName" runat="server"></asp:TextBox></td>
                <td><asp:Button ID="btnUserSecondName" runat="server" Text="Change Secondname" OnClick="btnUserSecondName_Click" /></td>
               <%-- <td><asp:RequiredFieldValidator ID="ReqValidSecondName" Display="Dynamic" CssClass="color" ControlToValidate="txtUserSecondName" runat="server" ErrorMessage="Empty field"></asp:RequiredFieldValidator></td>--%>
            </tr>
            <tr>
                <td>Surename: </td>
                <td><asp:TextBox ID="txtUserSurename" runat="server"></asp:TextBox></td>
                <td><asp:Button ID="btnSurename" runat="server" Text="Change Surename" OnClick="btnSurename_Click" /></td>
             <%--   <td><asp:RequiredFieldValidator ID="ReqValidSurename" Display="Dynamic" CssClass="color" ControlToValidate="txtUserSurename" runat="server" ErrorMessage="Empty field"></asp:RequiredFieldValidator></td>--%>
            </tr>
             <tr>
                <td>Gender: </td>
                <td><asp:TextBox ID="txtUserGender" runat="server"></asp:TextBox></td>
                <td><asp:Button ID="btnuserGender" runat="server" Text="Change Gender" OnClick="btnuserGender_Click" /></td>
               <%-- <td><asp:RequiredFieldValidator ID="ReqValidGender" Display="Dynamic" CssClass="color" ControlToValidate="txtUserGender" runat="server" ErrorMessage="Empty field"></asp:RequiredFieldValidator></td>--%>
            </tr>
             <tr>
                <td>Password: </td>
                <td><asp:TextBox ID="txtUserPassword" runat="server"></asp:TextBox></td>
                <td><asp:Button ID="btnUserPassword" runat="server" Text="Change Password" OnClick="btnUserPassword_Click" /></td>
               <%-- <td><asp:RequiredFieldValidator ID="ReqValidPass" Display="Dynamic" CssClass="color" ControlToValidate="txtUserPassword" runat="server" ErrorMessage="Empty field"></asp:RequiredFieldValidator></td>--%>
            </tr>
             <tr>
                <td>Password check: </td>
                <td><asp:TextBox ID="txtUserPasswordCheck" runat="server"></asp:TextBox></td>
                <td></td>
                <%--<td><asp:RequiredFieldValidator ID="ReqValidPassCheck" Display="Dynamic" CssClass="color" ControlToValidate="txtUserPasswordCheck" runat="server" ErrorMessage="Empty field"></asp:RequiredFieldValidator></td>--%>
            </tr>
             <tr>
                <td>Phone: </td>
                <td><asp:TextBox ID="txtUserPhone" runat="server"></asp:TextBox></td>
                <td><asp:Button ID="btnUserPhone" runat="server" Text="Change Phone" OnClick="btnUserPhone_Click" /></td>
              <%--  <td><asp:RequiredFieldValidator ID="ReqValidPhone"  Display="Dynamic" CssClass="color" ControlToValidate="txtUserPhone" runat="server" ErrorMessage="Empty field"></asp:RequiredFieldValidator></td>--%>
            </tr>
            <tr>
                <td>Email: </td>
                <td><asp:TextBox ID="txtUserEmail" runat="server"></asp:TextBox></td>
                <td><asp:Button ID="btnEmail" runat="server" Text="Change Email" OnClick="btnEmail_Click" /></td>
              <%--  <td><asp:RequiredFieldValidator ID="ReqValidEmail"  Display="Dynamic" CssClass="color" ControlToValidate="txtUserEmail" runat="server" ErrorMessage="Empty field"></asp:RequiredFieldValidator></td>--%>
            </tr>         
        </table>     
    </div>       
    </form>
</body>
</html>
