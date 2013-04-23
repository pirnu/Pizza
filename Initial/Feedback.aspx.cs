using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO; // necessary for file io in c#
using System.Data.OleDb; //For database useage

public partial class Feedback : System.Web.UI.Page
{
    //Analysis Variables For for the Analysis Datebase
    public string c_connString;
    public string c_query;
    public OleDbConnection c_connect;
    public OleDbCommand c_command;
    public OleDbDataReader thereader;

    OleDbConnection conn; //connects program to DB
    string connString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source= |DataDirectory|\\FBDB.accdb;Persist Security Info=False"; // Security Info=False"; //DB info so program can connect to it
    string query; //string to hold SQL query
    OleDbDataReader rdr; //temporary holding place for data from DB

    private string[] Names = new string[10];
    private string[] feedback = new string[10];

    int i = 0;

    protected void Page_Load(object sender, EventArgs e)
    {

        //**********************************************************
        //Links the AnalysisDB to the program, creates a new data set and stores all the data from
        //the table inside
        c_connString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source= |DataDirectory|\\FBDB.accdb;Persist Security Info=False";
        c_query = "SELECT * from feedback WHERE Status = 'Approved'";
        c_connect = new OleDbConnection(c_connString);
        c_command = new OleDbCommand(c_query, c_connect);
        c_connect.Open();
        thereader = c_command.ExecuteReader();

        while (thereader.Read())
        {
            Names[i] = thereader.GetString(1);
            feedback[i] = thereader.GetString(2);
            i++;
        }

        //DB Step 3: Connect to Database
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then open it

        //GET # OF VOTES TO DISPLAY
        //sql command to select everything from the votes table    
        query = "SELECT * FROM feedback";
        OleDbCommand cmd = new OleDbCommand(query, conn); //actually apply query to DB
        using (conn)
        {
            //execute the qeury and store the results in our OleDbDataReader        
            rdr = cmd.ExecuteReader();
        }
        conn.Close(); //Always want to close connection to outside files
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        namelabel.Visible = true;
        Label1.Visible = true;
        fbtext.Visible = true;

        if (ViewState["Click"] == null)
        {
            ViewState["Click"] = 0;
        }
        int count = Convert.ToInt16(ViewState["Click"]);
        namelabel.Text = Names[count];
        fbtext.Text = feedback[count];
        if (count < i - 1)
        {
            ViewState["Click"] = ++count;
        }
        else
        {
            ViewState["Click"] = 0;
        }
    }
    protected void fbtext_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Feedbackbut_Click(object sender, EventArgs e)
    {
        //DB Step 3: Connect to Database
        conn = new OleDbConnection(connString); //code that actually executes link
        conn.Open(); //and then opens it

        //sql command to see if name already exists in the DB     
        OleDbCommand cmd = new OleDbCommand("SELECT * FROM feedback", conn);

        cmd = new OleDbCommand("INSERT INTO feedback (CusName, Feedback, Status, TheDate) VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "','Pending','" + DateTime.Now.ToShortDateString() + "')", conn);
        cmd.ExecuteNonQuery();

        conn.Close();

        TextBox1.Text = "";
        TextBox2.Text = "";

    }
}