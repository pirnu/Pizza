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
        Calendar1.Visible = false;
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
        Calendar1.Visible = true;
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

    protected void Feedback_RDB(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            // determine the value of the UnitsInStock field
            string status = DataBinder.Eval(e.Row.DataItem, "Status").ToString();
            if (status == "Pending")
            {
                // color the background of the row yellow
                e.Row.BackColor = Color.Goldenrod;
            }
            else if (status == "Approved")
            {
                // color the background of the row green
                e.Row.BackColor = Color.DarkSeaGreen;
            }
            else
            {
                // color the background of the row red
                e.Row.BackColor = Color.Tomato;
            }
        }
    }
    protected void SelectDate(object sender, EventArgs e)
    {
        trends.Visible = true;
        Calendar1.Visible = true;
        string date = Calendar1.SelectedDate.Date.ToString("MM/dd/yyyy");
        string query;


        query = "SELECT [Category], [Quantity] FROM [Sales] WHERE [NotDate] = '" + date + "'";
        SqlDataSource3.SelectCommand = query;
        trends.DataBind();

    }
    protected void Visible(object sender, MonthChangedEventArgs e)
    {
        trends.Visible = true;
        Calendar1.Visible = true;
    }
}