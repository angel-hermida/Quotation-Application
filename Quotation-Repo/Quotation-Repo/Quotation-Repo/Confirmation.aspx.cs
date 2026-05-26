using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace XEx02Quotation.Quotation
{
    public partial class Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["SalesPrice"] != null && Session["DiscountAmount"] != null &&
            Session["TotalPrice"] != null)
            {
                decimal salesPrice = Convert.ToDecimal(Session["SalesPrice"]);
                lblSalesPrice.Text = salesPrice.ToString("c");
                lblDiscountAmount.Text = Session["DiscountAmount"].ToString();
                lblTotalPrice.Text = Session["TotalPrice"].ToString();
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtEmail.Text == "" || txtName.Text == "")
            {
                lblError.Text = "Please enter your name and email.";
            }
            else
            {
                Response.Redirect("ThankYou.aspx");
            }
        }
        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}