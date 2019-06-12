using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataTransferExample
{
    public partial class Page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_sendData_Click(object sender, EventArgs e)
        {
            //1.QueryString Method

            //Response.Redirect("Page2.aspx?nameA=" + txtName.Text);

            //2) Using PreviousPage.FindControl():

            //Server.Transfer("Page2.aspx");


        }
    }
}