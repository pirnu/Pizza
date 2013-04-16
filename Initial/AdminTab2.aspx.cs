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

        /*//http://stackoverflow.com/questions/5998571/binding-database-data-to-the-gridview-in-asp-net

        myConnection = WebConfigurationManager.ConnectionStrings["Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Test.accdb"].ConnectionString;
        connect = new SqlConnection(myConnection);
        string sorgu = "select K.ad,K.yazar,K.baskiNo,O.sonTeslimTarihi from Kitap K, OduncIslemleri O where O.kitapId = K.id and O.kullaniciId = " + Session["id"];
        SqlDataAdapter sadp = new SqlDataAdapter(sorgu, connect);
        DataSet ds = new DataSet();
        sadp.Fill(ds);
        this.GridView1.DataSource = ds.Tables[0];
        this.GridView1.DataBind();
        connect.Close();*/
    }
    protected void coupButton_Click(object sender, EventArgs e)
    {
        coupData.Visible = true;
    }
    protected void trendButton_Click(object sender, EventArgs e)
    {
        trends.Visible = true;
    }
}