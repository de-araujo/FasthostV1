using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace FastHostsHeaderDemoV1
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_OnClick(object sender, EventArgs e)
        {
            
                try
                {
                    //Create the connection string and open the conn (which means 'connection')
                    SqlConnection conn = new SqlConnection("Data Source=SAMSLAPTOP;Initial Catalog=Fasthosts;Integrated Security=True");
                    conn.Open();

                    //Gather the data with it's values. 
                    //it takes the value from the form in the correct order.
                    //and pass the information over to the database
                    string insertQuery = "INSERT INTO [ContactID] (FirstName, Email, Message) VALUES (@FirstName, @Message, @Email)";
                    SqlCommand com = new SqlCommand(insertQuery, conn);
                    com.Parameters.AddWithValue("@FirstName", tbFirstName.Text);
                    com.Parameters.AddWithValue("@Email", tbEmail.Text);
                    com.Parameters.AddWithValue("@Message", Message.Text);


                    com.ExecuteNonQuery();
                    //Cookies
                    HttpCookie userInfo = new HttpCookie("userInfo");
                    userInfo["Email"] = "@Email";
                    userInfo.Expires.Add(new TimeSpan(0, 1, 0));
                    Response.Cookies.Add(userInfo);
                    //close connection
                    conn.Close();
                }
                //IF there is an error, then tell me what it is!
                catch (Exception ex)
                {
                    Response.Write("Error:" + ex);
                    //throw;
                }
            }
    }
}