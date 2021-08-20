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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_OnClick(object sender, EventArgs e)
        {
            try
            {
                
                SqlConnection conn = new SqlConnection("Data Source=SAMSLAPTOP;Initial Catalog=Fasthosts;Integrated Security=True");
                conn.Open();
                
                string insertQuery = "SELECT [Password], [UserId] FROM [UserID] WHERE [Username] = '" + tbUsername.Text + "'";
                SqlCommand com = new SqlCommand(insertQuery, conn);

                SqlDataReader response = com.ExecuteReader();
                if (response.Read())
                {
                    string pass = response.GetString(0);
                    if (pass == tbPassword.Text)
                    {
                        System.Diagnostics.Debug.WriteLine("yes");
                        string cookie = Guid.NewGuid().ToString();
                        int userid = response.GetInt32(1);
                        response.Close();
                        string insertQuery2 = string.Format("INSERT INTO [Cookie] (Cookie, UserId) VALUES ('{0}', '{1}')", cookie, userid);
                        SqlCommand com2 = new SqlCommand(insertQuery2, conn);
                        com2.ExecuteNonQuery();
                        conn.Close();

                        Response.Cookies["Nancy"].Value = cookie;

                        Response.Redirect("Default.aspx");
                    }
                }
            }
            catch
            {
                System.Diagnostics.Debug.WriteLine("no");
            }
        }
    }
}