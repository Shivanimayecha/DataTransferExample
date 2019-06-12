<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="DataTransferExample.Page1" %>

<!DOCTYPE html>
<%--1) .QueryString Method--%>
<script runat="server">
    protected void btn_Click(object sender , EventArgs e)
    {
        Response.Redirect("Page2.aspx?nameA=" + txtName.Text);
    }
</script>


<%--2) Using PreviousPage.FindControl():
<script runat="server">
    protected void btn_sendData_Click(object sender, EventArgs e)
    {
        Server.Transfer("Page2.aspx");
    }
</script>--%>

<%--3) Using Session State:--%>
<%--<script runat="server">
    protected void btn_sendData_Click(object sender, EventArgs e)
    {
        Session["nameA"] = txtName.Text;
        Response.Redirect("Page2.aspx")
    }
</script>--%>

<%--4) Using Cookies:--%>

<%--<script runat="server">
    protected void btn_sendData_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = new HttpCookie("nameA");
        cookie.Value = txtName.Text;
        cookie.Expires = DateTime.Now.AddDays(1);
        Response.Cookies.Add(cookie);
        Response.Redirect("Page2.aspx");

    }
</script>--%>

<%--5) Using Application Variables:--%>
<%--<script runat="server">
    protected void btn_sendData_Click(object sender, EventArgs e)
    {
        Application["nameA"] = txtName.Text;
        Response.Redirect("Page2.aspx");

    }
</script>--%>

<%--6) Using Context:--%>

<%--<script runat="server">
    protected void btn_sendData_Click(object sender, EventArgs e)
    {
        Context.Items.Add("nameA", txtName.Text);
        Server.Transfer("Page2.aspx"); 

    }
</script>--%>




<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" ID="lblName" Text="Enter Name:">
            </asp:Label>
            <asp:TextBox runat="server" ID="txtName"></asp:TextBox>
            <asp:Button runat="server" ID="btn_sendData" Text="Transfer Data" OnClick="btn_sendData_Click" />
        </div>
    </form>
</body>
</html>
