using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
namespace XEx02Quotation.Quotation
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //txtSalesPrice.Focus();
            // ^ above is commented out because I don't like this behavior. It can be annoying if the
            //user clicks on another field and then the focus jumps back to the sales price field.
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            // reset colors every click
            txtSalesPrice.BackColor = System.Drawing.Color.White;
            txtDiscountPercent.BackColor = System.Drawing.Color.White;
            // highlight empties
            if (txtSalesPrice.Text.Trim() == "")
                txtSalesPrice.BackColor = System.Drawing.Color.LightPink;
            if (txtDiscountPercent.Text.Trim() == "")
                txtDiscountPercent.BackColor = System.Drawing.Color.LightPink;
            // clear previous results
            lblDiscountAmount.Text = "";
            lblTotalPrice.Text = "";
            lblError.Text = "";
            if (Page.IsValid)
            {
                if (!double.TryParse(txtSalesPrice.Text, out double price))
                {
                    lblError.Text = "Sales Price must be a number.";
                    txtSalesPrice.Focus();
                    return;
                }
                if (!double.TryParse(txtDiscountPercent.Text, out double discount))
                {
                    lblError.Text = "Discount Percent must be a number.";
                    txtDiscountPercent.Focus();
                    return;
                }
                // Optional range checks
                if (price < 10 || price > 1000)
                {
                    lblError.Text = "Sales Price must between 10 and 1000.";
                    return;
                }
                if (discount < 10 || discount > 50)
                {
                    lblError.Text = "Discount Percent must be between 10 and 50.";
                    return;
                }
                double amount = price * (discount / 100.0);
                double total = price - amount;
                lblDiscountAmount.Text = amount.ToString("C");
                lblTotalPrice.Text = total.ToString("C");
            }
        }
        //Optional: Reset background color when user starts typing
        protected void txtSalesPrice_TextChanged(object sender, EventArgs e)
        {
            txtSalesPrice.BackColor = System.Drawing.Color.White;
        }
        // End Optional Section
        //Optional: Reset background color when user starts typing
        protected void txtDiscountPercent_TextChanged(object sender, EventArgs e)
        {
            txtDiscountPercent.BackColor = System.Drawing.Color.White;
        }
        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            if (lblTotalPrice.Text == "")
            {
                lblError.Text = "Please calculate the total price before confirming.";
                return;
            }
            else
            {
                Session["SalesPrice"] = txtSalesPrice.Text;
                Session["DiscountAmount"] = lblDiscountAmount.Text;
                Session["TotalPrice"] = lblTotalPrice.Text;
                Response.Redirect("Confirmation.aspx");
            }
        }
        // End Optional Section
    }
}
