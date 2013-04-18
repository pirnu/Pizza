using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminTab2 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        fblabel.Visible = false;
        fbtext.Visible = false;
        fbapprove.Visible = false;
        fbdeny.Visible = false;
        data.Visible = false;
        trends.Visible = false;
        coupData.Visible = false;
        DetailsView1.Visible = false;
        btnAdd.Visible = false;
    }
    protected void fbbutton_Click(object sender, EventArgs e)
    {
        fblabel.Visible = true;
        fbtext.Visible = true;
        fbapprove.Visible = true;
        fbdeny.Visible = true;
    }
    protected void menuButton_Click(object sender, EventArgs e)
    {
        data.Visible = true;
        btnAdd.Visible = true;
        

    }
    protected void coupButton_Click(object sender, EventArgs e)
    {
        coupData.Visible = true;
    }
    protected void trendButton_Click(object sender, EventArgs e)
    {
        trends.Visible = true;
    }
    // Show Add new record
    protected void AddNewRecord(object sender, EventArgs e)
    {
        DetailsView1.DefaultMode = DetailsViewMode.Insert;
        DetailsView1.Visible = true;
        data.Visible = true;
        btnAdd.Visible = true;
    }
    protected void StayVisible(object sender, EventArgs e)
    {
        data.Visible = true;
        btnAdd.Visible = true;
    }
    protected void StayMoreVisible(object sender, EventArgs e)
    {
        data.Visible = true;
        btnAdd.Visible = true;
        DetailsView1.Visible = true;
    }
}