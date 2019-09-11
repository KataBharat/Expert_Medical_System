<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Diagnosis.aspx.cs" Inherits="Medical.Diagnosis" %>

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
                    Diagnosis page
                </caption>  
                <tr>  
                    <td class="style2">  
 </td>  
                    <td>  
 </td>  
  
                </tr>  

         <tr>  
                    <td class="style2">  
Symptom1:</td>  
                    <td>  
                        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>  
                    </td>  
                   
                </tr>  
         <tr>  
                    <td class="style2">  
Symptom2:</td>  
                    <td>  
                        <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>  
                    </td>  
                   
                </tr>  
         <tr>  
                    <td class="style2">  
Symptom3:</td>  
                    <td>  
                        <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>  
                    </td>  
                   
                </tr>  
         <tr>  
                    <td class="style2">  
Symptom4:</td>  
                    <td>  
                        <asp:DropDownList ID="DropDownList4" runat="server"></asp:DropDownList>  
                    </td>  
                   
                </tr>  
         <tr>  
                    <td class="style2">  
Symptom5:</td>  
                    <td>  
                        <asp:DropDownList ID="DropDownList5" runat="server"></asp:DropDownList>  
                    </td>  
                   
                </tr>
        <tr>  
                    <td class="style2">  </td>  
                    <td>  
                          
                    </td>  
                   
                </tr>  
         <tr>  
                    <td class="style2">  
 </td>  
                    <td>  
                        <asp:Button ID="Button1" runat="server" Text="Diagnoize" OnClick="Button1_Click" />  
                    </td>  
                    <td>  
                        &nbsp;</td>  
                </tr>
        <tr>  
                    <td class="style2">  
</td>  
                    <td>  
                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                    </td>  
                   
                </tr>    
        </table>
    </div>
    </form>
</body>
</html>
