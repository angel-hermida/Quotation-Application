<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs"
Inherits="XEx02Quotation.Quotation.Confirmation" %>
    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Confirmation</title>
</head>
<body>
    <h1>Confirmation</h1>
        <form id="form1" runat="server">
            <table>
                <tr>
                    <td>Sales Price:</td>
                    <td width="25">&nbsp;</td>
                    <td><b><asp:Label ID="lblSalesPrice" runat="server" Text=""></asp:Label></b></td>
                    <td width="5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Discount Amount:</td>
                        <td width="25">&nbsp;</td>
                        <td class="auto-style1"><asp:Label ID="lblDiscountAmount" runat="server" Text="" Font-Bold="True"></asp:Label></td>
                </tr>
                <tr>
                    <td>Total Price:</td>
                        <td width="25">&nbsp;</td>
                        <td><b><asp:Label ID="lblTotalPrice" runat="server" Text=""></asp:Label></b></td>
                </tr>
                <tr>
                    <td><h1>Send Confirmation to:</h1></td>
                        <td width="25">&nbsp;</td>
                    <td>Name:</td>
                        <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                        <td width="25">&nbsp;</td>
                    <td>Email:</td>
                        <td><asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="5">
                    <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
            <p>
            <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" OnClick="btnSubmit_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="btnBack" runat="server" Text="BACK" OnClick="btnBack_Click" />
            </p>
     </form>
</body>
</html>