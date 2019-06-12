using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataTransferExample
{
    public partial class Page2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //1.QueryString 

            //string nameB = Request.QueryString["nameA"].ToString();
            //Response.Write(nameB);

            //2) Using PreviousPage.FindControl():

            //if (Page.PreviousPage != null)
            //{
            //    TextBox tb = (TextBox)Page.PreviousPage.FindControl("txtName");
            //    if (tb != null)
            //    {
            //        Response.Write(tb.Text);
            //    }
            //}
        }
    }
}