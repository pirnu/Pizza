using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security; //For MD5 Method

public partial class _Default : System.Web.UI.Page
{
    bool admin;

    protected void Page_Load(object sender, EventArgs e)
    {
        admin = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string un = TextBox1.Text;
        string pw = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox2.Text, "MD5");
        if (un == "A" && pw == "7CF2DB5EC261A0FA27A502D3196A6F60")
        {
            admin = true;
            Label1.Visible = false;
            toadmin_Click(sender, e);
        }
        else
        {
            admin = false;
            Label1.Text = "Incorrect Username and Password Combination";
            Label1.Visible = true;
        }
    }
    protected void toadmin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminTab2.aspx");
    }
}