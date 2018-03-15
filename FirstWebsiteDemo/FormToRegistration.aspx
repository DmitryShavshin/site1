<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormToRegistration.aspx.cs" Inherits="FirstWebsiteDemo.FormToRegistration" %>
<%@ Import Namespace="FirstWebsiteDemo" %>  
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link type="text/css" href="CSS/ScrollCss.css"/ rel="stylesheet" />
    <link type="text/css" href="CSS/CssBackground.css" rel="stylesheet"/>
    <link type="text/css" href="CSS/ButonTextFieldsCss.css" rel="stylesheet"/>
    <style type="text/css">
.container{
    border: 1px;
    width: 300px;
    min-height: 700px;
    padding: 15% 15% 0;
    margin: 0 25%;
}
.content{
    border: 1px;
    background: rgba(55, 52, 52, 0.7);
    position: absolute;
    margin: 0 20%;
    width: 60%; 
    min-height: 100%;
}
#btnCancel{
     margin-left: 3px;        
    text-align: center;            
    padding: 1px 2px; 
    background-color: rgba(9, 8, 8, 0.7);       
    font-size: 15px;
    color: #fff;
    transition: 0.5s;
}
#btnCancel:active, #btnCancel:hover{
    background-color: #fff;
    color: #000;  
    transition: 0.5s;
}
</style>
</head>
<body>
     <form id="form1" runat="server">
    <%  User user = (User)Session["user"];
        if (user != null)
        {
            txtLogin.Text = user.Login;
            txtPass.Text = user.Password;
            txtCheckPass.Text = user.Password;
            txtEmail.Text = user.Email;
            txtName.Text = user.Name;
            txtSecondName.Text = user.Secondname;
            txtSurename.Text = user.Surename;
            txtPhoneNumber.Text = user.Phone;
            DDListMonth.Text = user.Month;
            RBListGender.Text = user.Gender;
        } %>
   
      <div>
         <div class="content">
            <div class="container">
                 <p class="text">Enter your login</p>
                      <table>                   
                          <tr >
                              <th><asp:TextBox ID="txtLogin" CssClass="txtField" placeholder="login" runat="server" ></asp:TextBox><br /><hr /></th>                      
                              <th><asp:Label ID="lblCheckLogin" CssClass="color" runat="server"></asp:Label>
                                  <asp:RequiredFieldValidator ID="ReqValidLogin" Display="Dynamic" ControlToValidate="txtLogin" CssClass="color" runat="server" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
                                  <asp:CustomValidator ID="CustValidLogin" Display="Dynamic" ControlToValidate="txtLogin" CssClass="color" OnServerValidate="checkLength" runat="server" ErrorMessage="Login must be 5 - 15  characters"></asp:CustomValidator>
                              </th>
                          </tr>
                      </table>
                      <p class="text">Enter yor email</p>
                      <table>
                          <tr>
                              <th><asp:TextBox ID="txtEmail" CssClass="txtField" placeholder="email" runat="server"></asp:TextBox><br /><hr /></th>
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
                              <th><asp:TextBox ID="txtPass" CssClass="txtField" TextMode="Password" placeholder="password" runat="server"></asp:TextBox><br /><hr /></th>
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
                              <th><asp:TextBox ID="txtCheckPass" CssClass="txtField" TextMode="Password" placeholder="password repeat" runat="server"></asp:TextBox><br /><hr /></th>
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
                      <select id="DDListYear" name="DDListYear" class="ddlist">      
                          <%  
                              for (int i = 2018; i >= 1900; i--)
                              {%>
                                <option><%=i %></option>                       
                            <%}%>
                      </select>           
                      <select id="DDListDay" name="DDListDay" class="ddlist">      
                          <% for(int i = 1; i <= 31; i++)
                            {%>
                                <option><%=i %></option>
                          <%}%>
                      </select>                                   
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
                              <th><asp:TextBox ID="txtName" CssClass="txtField" placeholder="name" runat="server"></asp:TextBox><br /><hr /></th>
                              <th>
                                  <asp:RequiredFieldValidator ID="ReqValidName" Display="Dynamic" CssClass="color" ControlToValidate="txtName" runat="server" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
                                  <asp:CompareValidator ID="CompValidName" Display="Dynamic" CssClass="color" ControlToValidate="txtName" Operator="DataTypeCheck" Type="String" runat="server" ErrorMessage="Name must have characters 'a-z'"></asp:CompareValidator>                           
                              </th>
                          </tr>
                      </table>
                      <p class="text">Enter you second name </p>
                      <table>
                           <tr>
                              <th><asp:TextBox ID="txtSecondName" CssClass="txtField" placeholder="second name" runat="server"></asp:TextBox><br /><hr /></th>
                              <th>
                                  <asp:RequiredFieldValidator ID="ReqValidSecondName" Display="Dynamic" CssClass="color" ControlToValidate="txtSecondName" runat="server" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
                                  <asp:CompareValidator ID="CompValidSecondName" Display="Dynamic" CssClass="color" ControlToValidate="txtSecondName" Operator="DataTypeCheck" Type="String" runat="server" ErrorMessage="Name must have characters 'a-z'"></asp:CompareValidator>
                              </th>
                          </tr>
                      </table>
                      <p class="text">Enter you surename</p>
                      <table>
                           <tr>
                              <th><asp:TextBox ID="txtSurename" CssClass="txtField" placeholder="surname" runat="server"></asp:TextBox><br /><hr /></th>
                              <th>
                                  <asp:RequiredFieldValidator ID="ReqValidSurename" Display="Dynamic" CssClass="color" ControlToValidate="txtSurename" runat="server" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
                                  <asp:CompareValidator ID="CompValidSurename" Display="Dynamic" CssClass="color" ControlToValidate="txtSurename" Operator="DataTypeCheck" Type="String" runat="server" ErrorMessage="Name must have characters 'a-z'"></asp:CompareValidator>
                              </th>
                          </tr>
                      </table>  
                      <p class="text">Enter you Phone number</p>
                      <table>
                           <tr>
                              <th><asp:TextBox ID="txtPhoneNumber" CssClass="txtField" placeholder="phone number" runat="server"></asp:TextBox><br /><hr /></th>
                              <th>
                                  <asp:RequiredFieldValidator ID="ReqValidPhone" Display="Dynamic" CssClass="color" ControlToValidate="txtPhoneNumber" runat="server" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
                                  <asp:RegularExpressionValidator ID="RegExprValidPhone" Display="Dynamic" CssClass="color" ControlToValidate="txtPhoneNumber" validationexpression="\+?\d{9,14}" runat="server" ErrorMessage="Phone must hawe format +123..."></asp:RegularExpressionValidator>
                              </th>
                          </tr>
                      </table>     
                    <table>
                        <tr><asp:Button ID="btnReg" runat="server" Text="Registration" OnClick="btnReg_Click" /></tr>
                        <asp:Button ID="btnLogin" CausesValidation="false" runat="server" Text="Login" OnClick="btnLogin_Click1" />
                        <asp:Button ID="btnCancel" Visible="false" CausesValidation="false" runat="server" Text="Cancel" OnClick="btnCancel_Click"/>
                   </table>        
                </div>           
             </div>  
          </div>  
    <script>
        <%if (user != null)
        {
          string year = user.Year;
          string day = user.Day;%>
          document.getElementById("DDListYear").value = <%=year%>;
          document.getElementById("DDListDay").value = <%=day%>;
        <%}%>
    </script>
</form>
</body>
</html>
