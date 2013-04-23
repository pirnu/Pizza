using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class AdminTab2 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        FBGrid.Visible = false;
        data.Visible = false;
        trends.Visible = false;
        coupData.Visible = false;
        DetailsView1.Visible = false;
        btnAdd.Visible = false;
    }
    protected void fbbutton_Click(object sender, EventArgs e)
    {
        FBGrid.Visible = true; 
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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void row_edit(object sender, EventArgs e)
    {
        FBGrid.Visible = true;
    }

    protected void feedback_RDB(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string status = DataBinder.Eval(e.Row.DataItem, "Status").ToString();
            if (status == "Pending")
            {
                e.Row.BackColor = Color.Goldenrod;
            }
            else if (status == "Approved")
            {
                e.Row.BackColor = Color.DarkSeaGreen;
            }
            else
            {
                e.Row.BackColor = Color.Tomato;
            }
        }
    }
}