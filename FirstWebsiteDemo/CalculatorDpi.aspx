<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalculatorDpi.aspx.cs" Inherits="FirstWebsiteDemo.CalculatorDpi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="CSS/CssBackground.css" rel="stylesheet" />
    <style type="text/css"> 
        .decorParagraph{
            margin: 0 auto;
            text-decoration: none;
            color: #fff;
        }
        .computation{
            padding-left: 15px;
            text-align: left;
        }
        .res{
            width: 240px;
            padding-right: 15px;
            text-align:right;   
        }
        .lblDecor{
            color: #fff;
            text-decoration: none;
            font-size: 12px;
        }
        #btnCalc{
            text-align: center;
            height: 30px;
            width: 80px;
            background-color: rgb(153, 0, 0);
            color: #fff;
            margin-left: 16px;

        }
        #btnCalc:hover, #btnCalc:active{
            background-color: rgb(255, 26, 26);
            color: #fff;
        }
        .container{
            margin-left: 25%;
            padding: 10px;
            background-color: rgba(128, 128, 128, 0.2);
            width: 400px;
        }
        iframe{
            width: 250px;
            height: 300px;       
            border: 2px solid rgb(215,222,227);
            background-color:  rgba(55, 52, 52, 0.7);
            float: right;
            margin-right: 3%;
        }
        .content{
            background: rgba(55, 52, 52, 0.7);
            margin: 0 10%;
            width: 80%; 
            padding: 25% 0;
            background:  rgba(55, 52, 52, 0.7);
        }
        .txtField{
            margin: 0 auto;
            border: none;
            background: transparent;
            color: #fff;
            transition: 0.5s;
        }
        .txtField:hover, .txtField:active{
            background-color: #ada9a9;
        }
        hr{
            padding: 0;
            margin: 0 auto;
        }
        #btnCalc{
            margin: 5px 0 0 16px;        
            text-align: center;            
            width: 80px;
            height: 25px;   
            background-color: rgba(9, 8, 8, 0.7);       
            font-size: 15px;
            color: #fff;
            transition: 0.7s;
        }
        #btnCalc:hover, #btnCalc:active{
            background-color: #fff;
            color: #000;  
        }
        .color{
            background-color: #ff0000;
            color: #fff;
        } 
        footer{
            background: rgba(15, 9, 98, 0.6);
            margin: 0 10%;
            width: 80%; 
            height: 50px;
        }
        header{
             background: rgba(13, 128, 43, 0.7);
             margin: 0 10%;
             width: 80%; 
             height: 50px;
        }
    </style>
</head>
<body>
  <header>header</header>   
  <div class="content">
      <form id="form1" runat="server">
          <iframe src="Resolution.html"></iframe>
          <div class="container">  
             <p class="decorParagraph">Input your resolution:</p>
             <hr />
             <table>
                 <tr>
                     <th class="computation">
                         <p class="decorParagraph">Input width</p>
                         <asp:TextBox ID="txtWidth" CssClass="txtField" placeholder="Width" runat="server"></asp:TextBox>
                         <hr />
                         <p class="decorParagraph">Input heigth</p>
                         <asp:TextBox ID="txtHeigth" CssClass="txtField" placeholder="Heigth" runat="server"></asp:TextBox>
                         <hr />
                         <p class="decorParagraph">Input your diagonal</p>
                         <asp:TextBox ID="txtDiagonal" CssClass="txtField" placeholder="Diagonal" runat="server"></asp:TextBox>
                         <hr />
                     </th>
                     <th class="res">
                          <p class="decorParagraph">Your resolution</p>
                          <asp:Label CssClass="lblDecor" ID="lblResolution" runat="server"></asp:Label><br />   
                          <asp:RequiredFieldValidator ID="ReqValidWidths" Display="Dynamic" ControlToValidate="txtWidth" CssClass="color" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="RegExprValidWidths" Display="Dynamic" CssClass="color" ControlToValidate="txtWidth" validationexpression="\d\d\d\d" runat="server" ErrorMessage="**"></asp:RegularExpressionValidator>
                          <p class="decorParagraph">Your aspect ratio</p>
                          <asp:Label CssClass="lblDecor"  ID="lblSides" runat="server"></asp:Label><br />
                          <asp:RequiredFieldValidator ID="ReqValidHeight" Display="Dynamic" ControlToValidate="txtHeigth" CssClass="color" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                          <%--<asp:RegularExpressionValidator ID="RegExprValidHeight" Display="Dynamic" CssClass="color" ControlToValidate="txtHeigth" validationexpression="\d{4, 6}" runat="server" ErrorMessage="*"></asp:RegularExpressionValidator>--%>
                          <p class="decorParagraph">Your DPI</p>
                          <asp:Label CssClass="lblDecor"  ID="lblRes" runat="server"></asp:Label>
                          <asp:RequiredFieldValidator ID="ReqValidDiagonal" Display="Dynamic" ControlToValidate="txtDiagonal" CssClass="color" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                          <%--<asp:RegularExpressionValidator ID="RegExprValidDiagonal" Display="Dynamic" CssClass="color" ControlToValidate="txtDiagonal" validationexpression="\d{2, 3}" runat="server" ErrorMessage="*"></asp:RegularExpressionValidator>--%>
                     </th>                                             
                </tr>                       
             </table>  
                    <asp:Button ID="btnCalc" runat="server" Text="Calculate" OnClick="btnCalc_Click" />
          </div>           
       </form>
  </div>
  <footer>Footer</footer>
</body>
</html>
