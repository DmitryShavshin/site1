<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormToPageCreate.aspx.cs" Inherits="FirstWebsiteDemo.FormToPageCreate" %>

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
            width: 300px;
        }
        table{
            padding: 10px;
            margin: 5% 0 5% 35%;
        }
        a{
            color: #a4a1a1;
            text-decoration: none;
        }
        a:hover, a:active{
             color: #0c0b0b;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <header></header>
            <div class="content">
                 <table>
                    <tr>
                        <th>
                            <h1>Account was created</h1>                            
                        </th>                             
                    </tr>
                    <tr>
                        <th>
                           Your login: <asp:Label ID="lblYourLogin" runat="server" Text="Label"></asp:Label>
                        </th>
                    </tr>
                    <tr>
                         <th>
                            <p>folow the<a href="FormToAuthorization.aspx">  link </a>for authorization</p>
                            <p>on tge site</p>
                        </th>
                    </tr>
                    <tr>
                         <th>
                            
                        </th>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
    