<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormToDPICalculator.aspx.cs" Inherits="FirstWebsiteDemo.FormToDPICalculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title></title>
<link href="CSS/CssBackground.css" rel="stylesheet" />
<link type="text/css" href="CSS/ButonTextFieldsCss.css" rel="stylesheet"/>
<link type="text/css" href="CSS/ScrollCss.css"/ rel="stylesheet" />
<link type="text/css" href="CSS/MenuCss.css" rel="stylesheet" />
<link type="text/css" href="CSS/logoCss.css" rel="stylesheet" />
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
iframe{
            width: 250px;
            height: 300px;       
            border: 2px solid rgb(215,222,227);
            background-color:  rgba(55, 52, 52, 0.7);
            float: right;
            margin-right: 3%;
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
.container{
    margin-left: 25%;
    padding: 10px;
    background-color: rgba(128, 128, 128, 0.2);
    width: 400px;
}
.content {
    background: rgba(55, 52, 52, 0.7);
    width: 80%;
    position: absolute;
    height: 100%;
    top: 79px;
    left: 10%;
    z-index: 1;
    padding-top: 100px;
}
header{
    margin: 0 10%;
    height: 40px;
    width: 80%;
    padding: 20px 0;
    background-color: rgba(13,13,13,1);    
}
.imgRes{
    margin: 100px 0 0 20px ;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="logo"><a href="FormToMainPage.aspx"><img src="img/labelBlack.png" /></a></div>
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
                                <asp:Label ID="lblUser" runat="server" Text=""></asp:Label>
                            </asp:TableHeaderCell>
                            <asp:TableHeaderCell>
                                 <asp:Button ID="btnExit" runat="server" CausesValidation="false" Text="Exit" OnClick="btnExit_Click" />
                            </asp:TableHeaderCell>
                        </asp:TableRow>
                    </asp:Table>
                </ul>
              </nav>     
            </div>                        
         </header>     
      <div class="content">
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
                              <asp:RegularExpressionValidator ID="RegExprValidHeight" Display="Dynamic" CssClass="color" ControlToValidate="txtHeigth" validationexpression="\d\d\d\d" runat="server" ErrorMessage="*"></asp:RegularExpressionValidator>
                              <p class="decorParagraph">Your DPI</p>
                              <asp:Label CssClass="lblDecor"  ID="lblRes" runat="server"></asp:Label>
                              <asp:RequiredFieldValidator ID="ReqValidDiagonal" Display="Dynamic" ControlToValidate="txtDiagonal" CssClass="color" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="RegExprValidDiagonal" Display="Dynamic" CssClass="color" ControlToValidate="txtDiagonal" validationexpression="\d\d" runat="server" ErrorMessage="*"></asp:RegularExpressionValidator>
                         </th>                                             
                    </tr>                       
                 </table>  
                        <asp:Button ID="btnCalc" runat="server" Text="Calculate" OnClick="btnCalc_Click" />
              </div>      
          <div class="imgRes">
              <p class="decorParagraph">Resolution types:</p>
              <img src="img/resolution.jpg" style="height: 300px; width: 600px"/>
          </div>     
      </div>
 </form>
</body>
</html>
