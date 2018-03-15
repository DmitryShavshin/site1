﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormToMasterPage.aspx.cs" Inherits="FirstWebsiteDemo.FormToMasterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title></title>
<link type="text/css" href="CSS/CssBackground.css" rel="stylesheet" />
<link type="text/css" href="CSS/ScrollCss.css"/ rel="stylesheet" />
<link type="text/css" href="CSS/MenuCss.css" rel="stylesheet" />
<link type="text/css" href="CSS/logoCss.css" rel="stylesheet" />
<style type="text/css">      
.conteiner{
    background: rgba(55, 52, 52, 0.7);
    position: absolute;
    min-height: 100%;
    top: 75px;
    left: 10%;
    right: 10%;
}
header{
    margin: 0 10%;
    padding: 0;
    height: 75px;
    width: 80%;
    background-color: rgba(13,13,13,1);
}
.title{
    margin: 10px 50px;
}
.content{
    margin: 0 50px;
}
#txtContent{
    width: 700px;
    height: 400px;
}
#btnSave{
    margin-left: 50px;        
    text-align: center;            
    padding: 1px 24px; 
    background-color: rgba(9, 8, 8, 0.7);       
    font-size: 15px;
    color: #fff;
    transition: 0.5s;
}
#btnSave:hover, btn:active{
    background-color: #fff;
    color: #000;  
    transition: 0.5s;
}
#lblUser{
    display:flex;
    justify-content: flex-end;
    padding: 20px;
    color: #fff;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="logo"><a href="FormToMainPage.aspx"><img src="img/labelBlack.png" /></a></div>
    <header><asp:Label ID="lblUser" runat="server" Text="TEST"></asp:Label></header>
    <div class="conteiner">          
         <div>
             <%--<a href="FormToMainPage.aspx">Go to main page</a>--%>
             <asp:GridView ID="gridNews" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" EmptyDataText="Table is empty" OnRowCancelingEdit="gridNews_RowCancelingEdit" OnRowDeleting="gridNews_RowDeleting" OnRowEditing="gridNews_RowEditing" OnRowUpdating="gridNews_RowUpdating" CellPadding="4" ForeColor="#333333" GridLines="None">
                 <AlternatingRowStyle BackColor="White" />
                 <Columns>
                    <asp:TemplateField HeaderText="Id">
                        <ItemTemplate><asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Title">
                        <ItemTemplate><asp:Label ID="lblTitle" runat="server" Text='<%#Eval("title") %>'></asp:Label></ItemTemplate>
                       <EditItemTemplate><asp:FileUpload ID="txtTitle" runat="server" Text='<%#Eval("title") %>'></asp:FileUpload></EditItemTemplate>
                       <%-- <EditItemTemplate><asp:TextBox ID="txtTitle" runat="server" Text='<%#Eval("title") %>'></asp:TextBox></EditItemTemplate>--%>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="News">
                        <ItemTemplate><asp:Label ID="lblNews" runat="server" Text='<%#Eval("news") %>'></asp:Label></ItemTemplate>
                        <EditItemTemplate><asp:TextBox ID="txtNews" runat="server" Text='<%#Eval("news") %>'></asp:TextBox></EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Img">
                        <ItemTemplate><asp:Label ID="lblImg" runat="server" Text='<%#Eval("img") %>'></asp:Label></ItemTemplate>
                        <EditItemTemplate><asp:TextBox ID="txtImg" runat="server" Text='<%#Eval("img") %>'></asp:TextBox></EditItemTemplate>
                    </asp:TemplateField>
                </Columns>
                 <EditRowStyle BackColor="#2461BF" />
                 <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                 <RowStyle BackColor="#EFF3FB" />
                 <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                 <SortedAscendingCellStyle BackColor="#F5F7FB" />
                 <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                 <SortedDescendingCellStyle BackColor="#E9EBEF" />
                 <SortedDescendingHeaderStyle BackColor="#4870BE" />
             </asp:GridView>            
          </div>
          <hr />
          <div>
              <table>
                  <tr><td>Load News</td><td><asp:FileUpload ID="FileUpload1" runat="server" /></td></tr>
                  <tr><td>Load Title</td><td><asp:FileUpload ID="FileUpload2" runat="server" /></td></tr>
                  <tr><td>Load Image</td><td><asp:FileUpload ID="FileUpload3" runat="server" /></td></tr>
                  <tr><td><asp:Button ID="btnLoad" runat="server" Text="Load" OnClick="btnLoad_Click" /></td>
                      <td><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td></tr>
              </table>   
          </div>    
     </div>       
    </form>
</body>
</html>
