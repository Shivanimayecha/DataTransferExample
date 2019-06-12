<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="DataTransferExample.Page2" %>

<!DOCTYPE html>
<%--1.QueryString Method--%>

<script runat="server">
     protected void Page_Load(object sender, EventArgs e)
        {
        string nameB = Request.QueryString["nameA"].ToString();
        Response.Write(nameB);
        }
</script>

<%--2) Using PreviousPage.FindControl():
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        ;
        if(Page.PreviousPage !=null)
        {
            TextBox tb =(TextBox)Page.PreviousPage.FindControl("txtName");
            if(tb!=null)
            {
                Response.Write(tb.Text);
            }
        }
    }
</script>--%>

<%--3) Using Session State:--%>

<%--<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["nameA"]!=null)
        {
            Response.Write(Session["nameA"].ToString());
        }
    }
</script>--%>

<%--4) Using Cookies:--%>

<%--<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.Cookies["nameA"]!=null)
        {
            Response.Write(Request.Cookies["nameA"].Value.ToString());
        }
    }
</script>--%>

<%--5) Using Application Variables:--%>

<%--<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Application["nameA"]!=null)
        {
            Response.Write(Application["nameA"].ToString());
        }
    }
</script>--%>

<%--6) Using Context:--%>
<%--<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        string nameB = Context.Items["nameA"].ToString();
        Response.Write(nameB);
    }
</script>--%>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
