<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="FirstWebsiteDemo.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link type="text/css" href="CSS/CssBackground.css" rel="stylesheet"/>
        <style type="text/css">
.container{
     width: 300px;
     height: 100%;
     padding: 15% 15%;
     margin: 0 25%;
}
.text{
    color: #fff;
    padding: 0;
    margin: 0 0 0 3px;
}
.textBox{
    margin: 0 auto;
    border: none;
    background: transparent;
    color: #fff;
    transition: 0.5s;
}
.textBox:active, .textBox:hover{
    background-color: #ada9a9;
}
hr{
    margin: 0 auto;
    padding: 0;
}
.ddlist{
    border: none;
    background-color: ButtonShadow;
    color: #fff;
}
.content{
    background: rgba(55, 52, 52, 0.7);
    margin: 0 20%;
    width: 60%; 
    height: 100%;
}
.color{
    background-color: #ff0000;
    color: #fff;
}
#RBListGender{
    color: #fff;
    margin-left: 0;
}
#btnReg{
    margin-left: 3px;        
    text-align: center;            
    width: 95px;
    height: 25px;   
    background-color: rgba(9, 8, 8, 0.7);       
    font-size: 15px;
    color: #fff;
    transition: 0.5s;
}
#btnReg:active, #btnReg:hover{
    background-color: #fff;
    color: #000;  
}
</style>
</head>
<body>
    <header></header>
    <div class="content">
        <form id="form1" runat="server">
            <div class="container" aria-checked="undefined">
                 <p class="text">Enter your login</p>
                      <table>                   
                          <tr >
                              <th><asp:TextBox ID="txtLogin" class="textBox" placeholder="login" runat="server"></asp:TextBox><br /><hr /></th>
                                                          
                              <th>
                                  <asp:Label ID="lblCheckLogin" CssClass="color" runat="server"></asp:Label>
                                  <asp:RequiredFieldValidator ID="ReqValidLogin" Display="Dynamic" ControlToValidate="txtLogin" CssClass="color" runat="server" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
                                  <asp:CustomValidator ID="CustValidLogin" Display="Dynamic" ControlToValidate="txtLogin" CssClass="color" OnServerValidate="checkLength" runat="server" ErrorMessage="Login must be 5 - 15 characters"></asp:CustomValidator>
                              </th>
                          </tr>
                      </table>
                      <p class="text">Enter yor email</p>
                      <table>
                          <tr>
                              <th><asp:TextBox ID="txtEmail" class="textBox" placeholder="email" runat="server"></asp:TextBox><br /><hr /></th>
                              <th>
                                  <asp:Label ID="lblEmailIncorrect" runat="server" CssClass="color"></asp:Label>
                                  <asp:RequiredFieldValidator ID="ReqValidEmail" Display="Dynamic" CssClass="color" ControlToValidate="txtEmail" runat="server" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
                                  <asp:RegularExpressionValidator ID="RegExprValidEmail" Display="Dynamic" CssClass="color" ControlToValidate="txtEmail" validationexpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="Email incorrect"></asp:RegularExpressionValidator>
                              </th>
                          </tr>
                      </table>
                      <p class="text">Enter yor password</p>
                      <table>
                          <tr>
                              <th><asp:TextBox ID="txtPass" class="textBox" TextMode="Password" placeholder="password" runat="server"></asp:TextBox><br /><hr /></th>
                              <th>
                                  <asp:RequiredFieldValidator ID="ReqValidPass" Display="Dynamic" CssClass="color" ControlToValidate="txtPass" runat="server" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
                                  <asp:CustomValidator ID="CustValidPass" Display="Dynamic" CssClass="color" ControlToValidate="txtPass" OnServerValidate="checkLength"  runat="server" ErrorMessage="Pasword must be 5 - 15 characters"></asp:CustomValidator>
                                  <asp:CompareValidator ID="CompValidPass" Display="Dynamic" CssClass="color" ControlToValidate="txtPass" ControlToCompare="txtCheckPass" runat="server" ErrorMessage="Password do not match"></asp:CompareValidator>
                              </th>
                          </tr>
                      </table>
                      <p class="text">Enter password again</p>
                      <table>
                           <tr>
                              <th><asp:TextBox ID="txtCheckPass" class="textBox" TextMode="Password" placeholder="password repeat" runat="server"></asp:TextBox><br /><hr /></th>
                              <th>
                                  <asp:RequiredFieldValidator ID="ReqValidCheckPass" Display="Dynamic" CssClass="color" ControlToValidate="txtCheckPass" runat="server" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
                                   <asp:CustomValidator ID="CustValidCheckPass" Display="Dynamic" CssClass="color" ControlToValidate="txtCheckPass" OnServerValidate="checkLength"  runat="server" ErrorMessage="Pasword must be 5 - 15 characters"></asp:CustomValidator>
                              </th>
                          </tr>
                      </table>
                      <p class="text">Enter your gender</p>
                      <asp:RadioButtonList ID="RBListGender" runat="server">
                          <asp:ListItem Selected="True">Male</asp:ListItem>
                          <asp:ListItem>Female</asp:ListItem>
                      </asp:RadioButtonList>
                      <p class="text">Enter your age</p>
                      <asp:DropDownList ID="DDListYear" class="ddlist" runat="server">
                          <asp:ListItem>2000</asp:ListItem>
                          <asp:ListItem>2001</asp:ListItem>
                          <asp:ListItem>2002</asp:ListItem>
                          <asp:ListItem>2003</asp:ListItem>
                          <asp:ListItem>2004</asp:ListItem>
                          <asp:ListItem>2005</asp:ListItem>
                          <asp:ListItem>2006</asp:ListItem>
                          <asp:ListItem>2007</asp:ListItem>
                          <asp:ListItem>2008</asp:ListItem>
                          <asp:ListItem>2009</asp:ListItem>
                          <asp:ListItem>2010</asp:ListItem>
                          <asp:ListItem>2011</asp:ListItem>
                          <asp:ListItem>2012</asp:ListItem>
                          <asp:ListItem>2013</asp:ListItem>
                          <asp:ListItem>2014</asp:ListItem>
                          <asp:ListItem>2015</asp:ListItem>
                          <asp:ListItem>2016</asp:ListItem>
                          <asp:ListItem>2017</asp:ListItem>
                          <asp:ListItem>2018</asp:ListItem>
                      </asp:DropDownList>                      
                      <asp:DropDownList ID="DDListDay" class="ddlist" runat="server">
                          <asp:ListItem>1</asp:ListItem>
                          <asp:ListItem>2</asp:ListItem>
                          <asp:ListItem>3</asp:ListItem>
                          <asp:ListItem>4</asp:ListItem>
                          <asp:ListItem>5</asp:ListItem>
                          <asp:ListItem>6</asp:ListItem>
                          <asp:ListItem>7</asp:ListItem>
                          <asp:ListItem>8</asp:ListItem>
                          <asp:ListItem>9</asp:ListItem>
                          <asp:ListItem>10</asp:ListItem>
                          <asp:ListItem>11</asp:ListItem>
                          <asp:ListItem>12</asp:ListItem>
                          <asp:ListItem>13</asp:ListItem>
                          <asp:ListItem>14</asp:ListItem>
                          <asp:ListItem>15</asp:ListItem>
                          <asp:ListItem>16</asp:ListItem>
                          <asp:ListItem>17</asp:ListItem>
                          <asp:ListItem>18</asp:ListItem>
                          <asp:ListItem>19</asp:ListItem>
                          <asp:ListItem>20</asp:ListItem>
                          <asp:ListItem>21</asp:ListItem>
                          <asp:ListItem>22</asp:ListItem>
                          <asp:ListItem>23</asp:ListItem>
                          <asp:ListItem>24</asp:ListItem>
                          <asp:ListItem>25</asp:ListItem>
                          <asp:ListItem>26</asp:ListItem>
                          <asp:ListItem>27</asp:ListItem>
                          <asp:ListItem>28</asp:ListItem>
                          <asp:ListItem>29</asp:ListItem>
                          <asp:ListItem>30</asp:ListItem>
                          <asp:ListItem>31</asp:ListItem>
                      </asp:DropDownList>
                      <asp:DropDownList ID="DDListMonth" class="ddlist" runat="server">
                          <asp:ListItem>January</asp:ListItem>
                          <asp:ListItem>Fabruary</asp:ListItem>
                          <asp:ListItem>March</asp:ListItem>
                          <asp:ListItem>April</asp:ListItem>
                          <asp:ListItem>May</asp:ListItem>
                          <asp:ListItem>June</asp:ListItem>
                          <asp:ListItem>Julay</asp:ListItem>
                          <asp:ListItem>August</asp:ListItem>
                          <asp:ListItem>September</asp:ListItem>
                          <asp:ListItem>October</asp:ListItem>
                          <asp:ListItem>November</asp:ListItem>
                          <asp:ListItem>December</asp:ListItem>
                      </asp:DropDownList>
                      <p class="text">Enter you name</p>
                      <table>
                           <tr>
                              <th><asp:TextBox ID="txtName" class="textBox" placeholder="name" runat="server"></asp:TextBox><br /><hr /></th>
                              <th>
                                  <asp:RequiredFieldValidator ID="ReqValidName" Display="Dynamic" CssClass="color" ControlToValidate="txtName" runat="server" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
                                  <asp:CompareValidator ID="CompValidName" Display="Dynamic" CssClass="color" ControlToValidate="txtName" Operator="DataTypeCheck" Type="String" runat="server" ErrorMessage="Name must have characters 'a-z'"></asp:CompareValidator>                           
                              </th>
                          </tr>
                      </table>
                      <p class="text">Enter you second name </p>
                      <table>
                           <tr>
                              <th><asp:TextBox ID="txtSecondName" class="textBox" placeholder="second name" runat="server"></asp:TextBox><br /><hr /></th>
                              <th>
                                  <asp:RequiredFieldValidator ID="ReqValidSecondName" Display="Dynamic" CssClass="color" ControlToValidate="txtSecondName" runat="server" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
                                  <asp:CompareValidator ID="CompValidSecondName" Display="Dynamic" CssClass="color" ControlToValidate="txtSecondName" Operator="DataTypeCheck" Type="String" runat="server" ErrorMessage="Name must have characters 'a-z'"></asp:CompareValidator>
                              </th>
                          </tr>
                      </table>
                      <p class="text">Enter you surename</p>
                      <table>
                           <tr>
                              <th><asp:TextBox ID="txtSurename" class="textBox" placeholder="surname" runat="server"></asp:TextBox><br /><hr /></th>
                              <th>
                                  <asp:RequiredFieldValidator ID="ReqValidSurename" Display="Dynamic" CssClass="color" ControlToValidate="txtSurename" runat="server" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
                                  <asp:CompareValidator ID="CompValidSurename" Display="Dynamic" CssClass="color" ControlToValidate="txtSurename" Operator="DataTypeCheck" Type="String" runat="server" ErrorMessage="Name must have characters 'a-z'"></asp:CompareValidator>
                              </th>
                          </tr>
                      </table>  
                      <p class="text">Enter you Phone number</p>
                      <table>
                           <tr>
                              <th><asp:TextBox ID="txtPhoneNumber" class="textBox" placeholder="phone number" runat="server"></asp:TextBox><br /><hr /></th>
                              <th>
                                  <asp:RequiredFieldValidator ID="ReqValidPhone" Display="Dynamic" CssClass="color" ControlToValidate="txtPhoneNumber" runat="server" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
                                  <asp:RegularExpressionValidator ID="RegExprValidPhone" Display="Dynamic" CssClass="color" ControlToValidate="txtPhoneNumber" validationexpression="\+?\d{9,14}" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
                              </th>
                          </tr>
                      </table>     
                    <table>
                        <asp:Button ID="btnReg" runat="server" Text="Registration" OnClick="btnReg_Click1" />
                   </table>        
            </div>           
        </form>
    </div>   
</body>
</html>
