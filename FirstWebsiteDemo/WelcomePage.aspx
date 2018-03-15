<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="FirstWebsiteDemo.WelcomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="CSS/CssBackground.css" rel="stylesheet" />
    <style type="text/css">
        .content{
            margin: 15% 10%;
            background: rgba(55, 52, 52, 0.7);
            width: 80%; 
        }      
        th{
            text-align: center;
            color: #fff;
        }
        table{
            padding: 10px;
            margin: 5% 40%;
        }
        a{
            color: #a4a1a1;
            text-decoration: none;
            font-size: 12px;
        }
        a:hover, a:active{
             color: #0c0b0b;
        }
    </style>
</head>
<body>
    <header></header>
     <form id="form1" runat="server">
            <div class="content">
                 <table>
                    <tr>
                        <th>
                            <h1>Welcome</h1>                            
                        </th>                             
                    </tr>
                    <tr>
                        <th>
                            <asp:Label ID="lblYourLogin" runat="server" Text="Label"></asp:Label>
                        </th>
                    </tr>
                    <tr>
                         <th>
                            <p>Thank you for registering</p>
                            <p>on our site</p>
                        </th>
                    </tr>
                    <tr>
                         <th>
                            <a href="LoginForm.aspx">Now you can enter</a>
                        </th>
                    </tr>
                </table>
            </div>
        </form>
</body>
</html>
