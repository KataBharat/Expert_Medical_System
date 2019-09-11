<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Medical.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

<style>
.intro {
  
  margin-left:500px
  
}
.intro1 {
  
  margin-left:450px
  
}
</style>

</head>
<body>
    <form id="form1" runat="server">
    
        <div class="intro1">
        Medical Diagnosis system
        </div>
        <div class="intro">
        
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Signup" OnClick="Button2_Click" />
       
    
    </div>
    </form>
</body>
</html>
