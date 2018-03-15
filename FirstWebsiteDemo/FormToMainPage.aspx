<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormToMainPage.aspx.cs" Inherits="FirstWebsiteDemo.FormToMainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title></title>
<link type="text/css" href="CSS/CssBackground.css" rel="stylesheet" />
<link type="text/css" href="CSS/ScrollCss.css"/ rel="stylesheet" />
<link type="text/css" href="CSS/MenuCss.css" rel="stylesheet" />
<link type="text/css" href="CSS/logoCss.css" rel="stylesheet" />
<script>
function startTime() {
    var today = new Date();
    var h = today.getHours();
    var m = today.getMinutes();
    var s = today.getSeconds();
    m = checkTime(m);
    s = checkTime(s);
    document.getElementById('txt').innerHTML =
    h + ":" + m + ":" + s;
    var t = setTimeout(startTime, 500);
}
function checkTime(i) {
    if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
    return i;
}
</script>
<style type="text/css">
.menu{
    padding: 0;
    margin-left: 0;
    float: left;
    width: 581px;
    color: #fff;
}
header{
    margin: 0 10%;
    height: 40px;
    width: 80%;
    padding: 20px 0;
    background-color: rgba(13,13,13,1);    
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
.mainContent1{
    margin-top: 10px;
    width: 55%;
    height: 500px;
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
    height: 25%;
    background-color: rgb(255, 0, 0);
}
.news{
    margin: 10px 0;
    width: 97%;
    height: 25%;
    background-color: rgb(255, 0, 0);
}
#btnChange{
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
#btnChange:hover, #btnChange:active{
    background: rgb(255,255,255); /* Old browsers */
    background: -moz-linear-gradient(top, rgba(255,255,255,1) 0%, rgba(241,241,241,1) 50%, rgba(225,225,225,1) 51%, rgba(246,246,246,1) 100%); /* FF3.6-15 */
    background: -webkit-linear-gradient(top, rgba(255,255,255,1) 0%,rgba(241,241,241,1) 50%,rgba(225,225,225,1) 51%,rgba(246,246,246,1) 100%); /* Chrome10-25,Safari5.1-6 */
    background: linear-gradient(to bottom, rgba(255,255,255,1) 0%,rgba(241,241,241,1) 50%,rgba(225,225,225,1) 51%,rgba(246,246,246,1) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#f6f6f6',GradientType=0 ); /* IE6-9 */
    padding: 10px 20px 10px 50px;
    color: #000000;
    transition: 0.7s all;
}
#txt{
    font-size: 45px;
    font-family: 'Zero Threes';
    color: #fff;
}
.clock{
    margin: 0 auto;
    padding: 0;
    width: 250px;
    margin: 0 2%;
    float: right;  
    color: #fff;
}
.vote{
    float: right;
    margin-top: 240px;
    color: #fff;
    font-size: 15px;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
}
.newsToVote{
    float: left;
}
td{
    width: 405px;
    color: #fff;
    font-size: 17px;
    padding: 0;
}
.tdNews{
    width: 200px;
    height: 200px;
    padding: 15px;
    color: #fff;
    font-size: 12px;
}
#btnVote{
    margin-left: 3px;        
    text-align: center;            
    padding: 1px 2px; 
    background-color: rgba(9, 8, 8, 0.7);       
    font-size: 15px;
    color: #fff;
    transition: 0.5s;
}
#btnVote:active, #btnVote:hover{
    background-color: #fff;
    color: #000;  
    transition: 0.5s;
}
</style>
</head>
<body onload="startTime()">
    <form id="form1" runat="server">
        <div class="logo">
            <a><img src="img/labelBlack.png" /></a>
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
                                <asp:Label ID="lblUser" runat="server" Text=""></asp:Label>
                            </asp:TableHeaderCell>
                             <asp:TableHeaderCell>
                                <asp:Button ID="btnChange" runat="server" Text="Change data" OnClick="btnChange_Click" />
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
             <div class="newsToVote">
                    <table>
                        <tr><td>AMD Ryzen 2nd Generation release date, news and features: everything you need to know</td></tr>
                        <tr>
                            <td><img src="img/imgMainPage/mjYDLtjtfD8qjErgt2yXk7-970-80.jpg" style="height: 200px; width: 400px"/></td>
                            <td class="tdNews"><p><a href="https://www.techradar.com/news/amd-ryzen-2nd-generation">Ryzen shook up the CPU market – now can AMD rule it?</a></p></td>
                        </tr>
                          <tr><td>Intel Management Engine, Explained: The Tiny Computer Inside Your CPU</td></tr>
                        <tr>
                            <td><img src="img/imgMainPage/0_0_450_0_70__Features_chip-wafer-2012.jpg" style="height: 200px; width: 400px"/></td>
                            <td class="tdNews"><p><a href="https://www.howtogeek.com/334013/intel-management-engine-explained-the-tiny-computer-inside-your-cpu/">What Is Intel Active Management Technology (AMT)?</a></p></td>
                        </tr>
                         <tr><td>AMD Raven Ridge APU Graphics Performance Tested – Ryzen 5 2400G With Vega 11 iGPU On Par With RX 550 and GT 1030 GPUs</td></tr>
                        <tr>
                            <td><img src="img/imgMainPage/AMD-Ryzen-APU_Ryzen-5-2400G-and-Ryzen-3-2200G-Desktop-APUs.jpg" style="height: 200px; width: 400px"/></td>
                            <td class="tdNews"><p><a href="https://wccftech.com/amd-raven-ridge-ryzen-apu-vega-gpu-graphics-performance/">Ryzen shook up the CPU market – now can AMD rule it?</a></p></td>
                        </tr>
                    </table>
                </div>
            <div class="clock">
                  <div id="txt"></div>
            </div>
            <div class="vote">  
                <div>
                    <table>
                        <tr> <td><p>AMD Raven Ridge W/Vega</p><p>Graphics?</p></td></tr>
                        <tr><td>
                            <asp:radiobuttonlist ID="rbVote" runat="server">
                            <asp:ListItem Value="Hot" Selected="True">Hot</asp:ListItem>
                            <asp:ListItem Value="Not">Not</asp:ListItem>
                            <asp:ListItem Value="Intel">Intel for me</asp:ListItem>
                            <asp:ListItem Value="Ryzen">2nd Gen Ryzen</asp:ListItem>
                            </asp:radiobuttonlist>
                        </td></tr>
                        <tr><td><asp:Button ID="btnVote" runat="server" Text="Vote" OnClick="btnVote_Click" /></td><%--<td><a href="#">More results</a></td>--%></tr>
                    </table>
                </div>
            </div> 
        </div>    
     <footer></footer>
    </form>
</body>
</html>
