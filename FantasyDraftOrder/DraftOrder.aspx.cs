using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace FantasyDraftOrder
{
    public partial class DraftOrder : System.Web.UI.Page
    {
        //created a string for the current year
        string currentYear = DateTime.Now.ToString("yyyy");
        //created an array for the 12 teams
        Array[] order = new Array[12];

        protected void Page_Load(object sender, EventArgs e)
        {
            currentYearLabel.Text = currentYear + " Fantasy Draft Order";
            //string databaseWord1 = dview[0][1].ToString();
            //databaseWord1 = databaseWord1.Replace(" ", "");

            //takes the information from the grid and updates it to the text boxes
            TeamBox1.Text = GridView1.Rows[0].Cells[2].Text;
            TeamBox2.Text = GridView1.Rows[1].Cells[2].Text;
            TeamBox3.Text = GridView1.Rows[2].Cells[2].Text;
            TeamBox4.Text = GridView1.Rows[3].Cells[2].Text;
            TeamBox5.Text = GridView1.Rows[4].Cells[2].Text;
            TeamBox6.Text = GridView1.Rows[5].Cells[2].Text;
            TeamBox7.Text = GridView1.Rows[6].Cells[2].Text;
            TeamBox8.Text = GridView1.Rows[7].Cells[2].Text;
            TeamBox9.Text = GridView1.Rows[8].Cells[2].Text;
            TeamBox10.Text = GridView1.Rows[9].Cells[2].Text;
            TeamBox11.Text = GridView1.Rows[10].Cells[2].Text;
            TeamBox12.Text = GridView1.Rows[11].Cells[2].Text;


        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            //creates a string for the league name text box
            string leagueName = leagueNameTextBox.Text;

            //sets the label to show the current year, the league name, and then fantasy draft order
            currentYearLabel.Text = currentYear + " " + leagueName + " Fantasy Draft Order";
            randomizeLeagueTextBox.Text = leagueNameTextBox.Text;

            //clears the league name text box
            leagueNameTextBox.Text = "";
        }
        protected void randomizeButton_Click(object sender, EventArgs e)
        {
            
            //checks if any of the team names are empty
            if ((TeamBox1.Text == String.Empty) | (TeamBox2.Text == String.Empty) | (TeamBox3.Text == String.Empty) | (TeamBox4.Text == String.Empty) | (TeamBox5.Text == String.Empty) | (TeamBox6.Text == String.Empty)
                | (TeamBox7.Text == String.Empty) | (TeamBox8.Text == String.Empty) | (TeamBox9.Text == String.Empty) | (TeamBox10.Text == String.Empty) | (TeamBox11.Text == String.Empty) | (TeamBox12.Text == String.Empty))
            {
                //if the team names are empty, then show this alert
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Every Team must be filled')", true);
            }
            else {
                //set the array to the text boxes for all the team names
                string[] order = { TeamBox1.Text, TeamBox2.Text, TeamBox3.Text, TeamBox4.Text,
                TeamBox5.Text, TeamBox6.Text, TeamBox7.Text, TeamBox8.Text, TeamBox9.Text,
                TeamBox10.Text, TeamBox11.Text, TeamBox12.Text };

                //create a random number 
                Random randomNumber = new Random();

                //for loop to randomize the order of the draft
                for (int x = 0; x < order.Length - 1; x++)
                {
                    //random number between 0 and the length of the draft
                    int y = randomNumber.Next(x, order.Length);
                    //creates a string for each index of the array
                    string more = order[x];
                    //takes a random number of the array and sets that team name
                    //to to the index number x of the for loop
                    order[x] = order[y];
                    order[y] = more;
                }

                //takes the newly randomized order of the array, and sets those to the text boxes
                TeamBox1.Text = order[0];
                TeamBox2.Text = order[1];
                TeamBox3.Text = order[2];
                TeamBox4.Text = order[3];
                TeamBox5.Text = order[4];
                TeamBox6.Text = order[5];
                TeamBox7.Text = order[6];
                TeamBox8.Text = order[7];
                TeamBox9.Text = order[8];
                TeamBox10.Text = order[9];
                TeamBox11.Text = order[10];
                TeamBox12.Text = order[11];
               
                //keeps the league name whenever you randomize the draft order
                string leagueName = randomizeLeagueTextBox.Text;
                currentYearLabel.Text = currentYear + " " + leagueName + " Fantasy Draft Order";
            }
        }


    }

}