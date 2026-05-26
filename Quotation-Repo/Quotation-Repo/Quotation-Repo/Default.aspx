<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
Inherits="XEx02Quotation.Quotation.Default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Price Quotation</title>
            <style type="text/css">
            .auto-style1 {
            height: 31px;
            }
            </style>
            </head>
                <body>
                    <h1>Price Quotation</h1>
                        <form id="frmPriceQuotation" runat="server">
                            <table>
                                <tr>
                                    <td>Sales Price:</td>
                                    <td width="25">&nbsp;</td>
                                    <td><asp:TextBox ID="txtSalesPrice" runat="server" AutoPostBack="False"
                                OnTextChanged="txtSalesPrice_TextChanged"></asp:TextBox></td>
                                    <td width="5">&nbsp;</td>
                                    <td><asp:RequiredFieldValidator ID="valRequiredSalesPrice" runat="server"
                                        ErrorMessage="* Required!" Display="Dynamic" ControlToValidate="txtSalesPrice"
                                        ForeColor="Red" SetFocusOnError="True"
                                        EnableClientScript="false"></asp:RequiredFieldValidator></td>
                                        <!-- Added EnableClientScript="false" to FieldValidator. This allows us to run the else
                                        statements in Default.aspx.cs under the Calculate button in the case the page is invalid.-->
                                    </tr>
                                <tr>
                                    <td colspan="5">&nbsp;</td>
                                </tr>
                            <tr>
                                <td>Discount Percent:</td>
                                <td></td>
                                <td><asp:TextBox ID="txtDiscountPercent" runat="server" AutoPostBack="False"
                            OnTextChanged="txtDiscountPercent_TextChanged"></asp:TextBox></td>
                                <td width="5">&nbsp;</td>
                                <td><asp:RequiredFieldValidator ID="valRequiredDiscountPercent" runat="server"
                                    ErrorMessage="* Required!" Display="Dynamic" ControlToValidate="txtDiscountPercent"
                                    ForeColor="Red" SetFocusOnError="True"
                                    EnableClientScript="false"></asp:RequiredFieldValidator></td>
                                    <!-- Added EnableClientScript="false" to FieldValidator. This allows us to run the else
                                    statements in Default.aspx.cs under the Calculate button in the case the page is invalid.-->
                                    </tr>
                            <tr>
                                <td class="auto-style1">Discount Amount:</td>
                                <td class="auto-style1"></td>
                                <td class="auto-style1"><asp:Label ID="lblDiscountAmount" runat="server" Text=""
                                Font-Bold="True"></asp:Label></td>
                                <td class="auto-style1"></td>
                                <td class="auto-style1"></td>
                            </tr>
                            <tr>
                                <td colspan="5">&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Total Price:</td>
                                <td></td>
                                <td><asp:Label ID="lblTotalPrice" runat="server" Text=""></asp:Label></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td colspan="5">
                                <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
                                </td>
                            </tr>
                            </table>
                        <p><asp:Button ID="btnCalculate" runat="server" Text="CALCULATE"
                        OnClick="btnCalculate_Click"/>&nbsp; &nbsp;
                        <asp:Button ID="btnConfirm" runat="server" Text="CONFIRM" OnClick="btnConfirm_Click"
                        CausesValidation="False" /> </p>
                        </form>
                </body>
         </html>