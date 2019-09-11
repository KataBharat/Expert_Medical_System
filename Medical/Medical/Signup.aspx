<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Medical.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <table style="width:100%;">  
                <caption class="style1">  
                    Signup Form  
                </caption>  
                <tr>  
                    <td class="style2">  
 </td>  
                    <td>  
 </td>  
                    <td>  
 </td>  
                </tr>  
                <tr>  
                    <td class="style2">  
Username:</td>  
                    <td>  
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
                    </td>  
                    <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"   
ControlToValidate="TextBox1" ErrorMessage="Please Enter Your Username"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr>  
                <tr>  
                    <td class="style2">  
Password:</td>  
                    <td>  
                        <asp:TextBox ID="TextBox2" runat="server" parseText ="*"></asp:TextBox>  
                    </td>  
                    <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   
ControlToValidate="TextBox2" ErrorMessage="Please Enter Your password"   
ForeColor="Red"></asp:RequiredFieldValidator>  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter atleast At least one lower case letter,At least one upper case letter,At least special character,At least one number,At least 8 characters length"
        ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&+=]).*$" ControlToValidate="TextBox2"></asp:RegularExpressionValidator>
                    </td>  
                </tr>  
             <tr>  
                    <td class="style2">  
Confirm Password:</td>  
                    <td>  
                        <asp:TextBox ID="TextBox3" runat="server" parseText ="*"></asp:TextBox>  
                    </td>  
                    <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"   
ControlToValidate="TextBox2" ErrorMessage="Please Re-Enter Your password"   
ForeColor="Red"></asp:RequiredFieldValidator>  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" Operator="Equal" ErrorMessage="CompareValidator"></asp:CompareValidator>
                    </td>  
                </tr>  
              <tr>  
                    <td class="style2">  
Name:</td>  
                    <td>  
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>  
                    </td>  
                    <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"   
ControlToValidate="TextBox1" ErrorMessage="Please Enter Your Name"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr> 
              <tr>  
                    <td class="style2">  
Age:</td>  
                    <td>  
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>  
                    </td>  
                    <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"   
ControlToValidate="TextBox1" ErrorMessage="Please Enter Your Age"   
ForeColor="Red"></asp:RequiredFieldValidator>  <asp:RegularExpressionValidator runat="server" id="rexNumber" controltovalidate="TextBox5" validationexpression="^[0-9]{2}$" errormessage="Please enter a 2 digit number!" />
                    </td>  
                </tr> <tr>  
                    <td class="style2">  
Gender:</td>  
                    <td>  
                        <asp:RadioButtonList ID="Gender" runat="server" RepeatDirection="Horizontal">
                          <asp:ListItem>Male</asp:ListItem>
                          <asp:ListItem>Female</asp:ListItem>
                      </asp:RadioButtonList>
                          
                    </td>  
                    <td>  
                         <asp:RequiredFieldValidator ID="re_gender" runat="server"
                           ControlToValidate="Gender" Display="Dynamic"
                           ErrorMessage="Please Select the Gender" ForeColor="Red"
                           ValidationGroup="signUp"></asp:RequiredFieldValidator>
                    </td>  
                </tr>     
             <tr>  
                    <td class="style2">  
Height:</td>  
                    <td>  
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>  
                    </td>  
                    <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"   
ControlToValidate="TextBox1" ErrorMessage="Please Enter Your Height"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr>
             <tr>  
                    <td class="style2">  
Weight:</td>  
                    <td>  
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>  
                    </td>  
                    <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"   
ControlToValidate="TextBox1" ErrorMessage="Please Enter Your Weight"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr>
             <tr>  
                    <td class="style2">  
Blood group:</td>  
                    <td>  
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>  
                    </td>  
                    <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"   
ControlToValidate="TextBox1" ErrorMessage="Please Enter Your Blood Group"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr>
             <tr>  
                    <td class="style2">  
Medical History 1:</td>  
                    <td>  
                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>  
                    </td>  
                    <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server"   
ControlToValidate="TextBox1" ErrorMessage="Please Enter Your Medical History"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr>
             <tr>  
                    <td class="style2">  
Medical History 2:</td>  
                    <td>  
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>  
                    </td>  
                    <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"   
ControlToValidate="TextBox1" ErrorMessage="Please Enter Your Medical History"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr>
              <tr>  
                    <td class="style2">  
Medical History 3:</td>  
                    <td>  
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>  
                    </td>  
                    <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"   
ControlToValidate="TextBox1" ErrorMessage="Please Enter Your Medical History"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  

              </tr>

              <tr>  
                    <td class="style2">  
Email id:</td>  
                    <td>  
                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>  
                    </td>  
                    <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server"   
ControlToValidate="TextBox1" ErrorMessage="Please Enter Your Email id"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr>

              <tr>  
                    <td class="style2">  
Phone number:</td>  
                    <td>  
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>  
                    </td>  
                    <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server"   
ControlToValidate="TextBox1" ErrorMessage="Please Enter Your Phone number"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr>

              <tr>  
                    <td class="style2">  
Location:</td>  
                    <td>  
                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>  
                    </td>  
                    <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server"   
ControlToValidate="TextBox1" ErrorMessage="Please Enter Your Location"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr>
              

             
               
             
             
             
             
             
             
             
             
             
             
             
             
             
             
             
             
             
             
             
             
             
              <tr>  
                    <td class="style2">  
 </td>  
                    <td>  
 </td>  
                    <td>  
 </td>  
                </tr>  
                <tr>  
                    <td class="style2">  
 </td>  
                    <td>  
                        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />  
                    </td>  
                    <td>  
                        &nbsp;</td>  
                </tr>  
            </table>   
    
    </div>
    </form>
</body>
</html>
