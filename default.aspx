<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mika's Mortgage Calculator</title>
  
    <link rel="stylesheet" type="text/css" href="./stylesheet.css" />

    <style type="text/css">
        .auto-style7 {
            width: 216px;
        }
        .auto-style8 {
            width: 144px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <h1>Mika's Massively Awesome Loan Calculator</h1>
        
      <hr />

        <br />
        <table class="table">
            <tr>
                <td class="auto-style7">Loan Amount:</td>
                <td class="auto-style8"><asp:TextBox ID="tbLoanAmt" runat="server" Width="128px" style="margin-left: 0px" ></asp:TextBox>
                  
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="AmountRequiredFieldValidator" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="Please enter a valid number"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Annual Interest %: </td>
                <td class="auto-style8"> <asp:TextBox ID="tbAnnualInterest" runat="server" Width="128px" ></asp:TextBox>
        
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="InterestRequiredFieldValidator" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="Please enter a valid number"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Loan Term (Yrs): </td>
                <td class="auto-style8"> <asp:TextBox ID="tbLoanTerm" runat="server" Width="128px" ></asp:TextBox>
        
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="LoanRequiredFieldValidator" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="Please enter a valid number"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
        <asp:Button ID="btnClear" runat="server" Text="Clear" Width="106px" Height="27px" />
        
       
                </td>
                <td class="auto-style8">

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" Height="30px" Width="97px" />
        
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />

       </div>
         <tr>
            <td align="right">&nbsp;</td><td align="left"></td></tr><%if not IsPostBack Then%><p>Welcome to my mortgate calculator. Please complete the fields above to have your monthly payment and loan repayment schedule calculated for you. </p>
   

        <% Else%>
        
        
         <br /><br />
                
        Monthly Payment: &nbsp; <span class="bold"><asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label></span>
        
        <br /><br />
        
        <asp:GridView ID="grid" runat="server" cssClass="cssgridview">
            <AlternatingRowStyle CssClass ="alt" />
        </asp:GridView>
        <%end if %>
  
       
             
    </form>
</body>
</html>
