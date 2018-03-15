<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="FirstWebsiteDemo.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link type="text/css" href="CSS/CssBackground.css" rel="stylesheet"/>
    <style type="text/css" >
    .content{           
           padding-top: 15%;
    }
    table{
            
            margin: 0 0 0 35%;
        }
    th{
            text-align: center;
    }
    .container{          
            margin: 0 20%;        
            background-color: rgba(55, 52, 52, 0.7);
            width: 60%;
     }
     .button{  
            margin: 10px 0 0 0 ;          
            text-align: center;            
            width: 80px;
            height: 25px;   
            background-color: rgba(9, 8, 8, 0.7);       
            font-size: 15px;
            color: #fff;
            transition: 0.5s;
     }
   
     .button:hover, .button:active{
         background-color: #fff;
         color: #000;        
     }
     .text{
         text-align: left;
         margin: 7px 0 7px 0;
         font-size: 15px;
         color: #fff;
     }
     .txtField{
         border: none;
         background: transparent;
         color: #fff;
         transition: 0.5s;
     }
     .txtField:hover, .txtField:active{
         background-color: #ada9a9;
     }
     hr{
         margin: 0 auto;
     }
     a{
         color: #fff;
         text-decoration: none;
         font-size: 12px;

     }
     a:hover, a:active{
         color: #0c0b0b;
     }
     .color{
        background-color: #ff0000;
        color: #fff;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header></header>
        <div class="content">
            <div class="container">
               <table>
                   <tr>
                       <th>
                           <p class="text">Input your login</p>
                           <asp:TextBox ID="txtLogin" CssClass="txtField" placeholder="login" runat="server"></asp:TextBox>
                           <hr />
                       </th>
                       <th>
                           <asp:Label ID="lblUserIsAbsent" CssClass="color" runat="server" Text=""></asp:Label>
                           <asp:RequiredFieldValidator ID="RequiredLogin" Display="Dynamic" ControlToValidate="txtLogin" CssClass="color" runat="server" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
                       </th>
                   </tr>
                   <tr>
                       <th>
                           <p class="text">Input your Password</p>
                           <asp:TextBox ID="txtPassword" CssClass="txtField" placeholder="password" type="password" runat="server"></asp:TextBox>
                           <hr />
                       </th>
                       <th>
                           <asp:RequiredFieldValidator ID="RequiredPass" Display="Dynamic" ControlToValidate="txtPassword" CssClass="color" runat="server" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
                       </th>
                   </tr>  
                   <tr>
                       <th>
                            <asp:Button ID="btnOk" CssClass="button" runat="server" Text="Ok" OnClick="btnOk_Click" />
                            <asp:Button ID="btnCancel" CssClass="button" runat="server" value="reset" Text="Cancel" />
                            <p><a href="registrationForm.aspx">Registration now</a></p>
                       </th>
                   </tr>              
               </table>                    
            </div>         
        </div>         
    </form>
</body>
</html>
