using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FastHostsHeaderDemoV1
{
    public class DBUtility
    {
        public static bool AddUser(string fn, string ln, string email, string username, string pass)
        {
            //Create the connection string and open the conn (which means 'connection')
            SqlConnection conn = new SqlConnection("Data Source=SAMSLAPTOP;Initial Catalog=Fasthosts;Integrated Security=True");
            conn.Open();

            //Gather the data with it's values. 
            //it takes the value from the form in the correct order.
            //and pass the information over to the database
            string insertQuery = "INSERT INTO [UserID] (FirstName, Surname, Email, Username, Password) VALUES (@FirstName, @Surname, @Email, @Username, @Password)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@FirstName", fn);
            com.Parameters.AddWithValue("@Surname", ln);
            com.Parameters.AddWithValue("@Email", email);
            com.Parameters.AddWithValue("@Username", username);
            com.Parameters.AddWithValue("@Password", pass);

            com.ExecuteNonQuery();
            //Close the connection
            conn.Close();
            return true;
        }
    }
}