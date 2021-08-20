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
    public partial class WebForm2 : System.Web.UI.Page
    {
        private const string searchitemstemplate = @"<div id='{0}' class='searchResult'>
            <p class='details'>{1} <b class='price'>£{2}</b></p>
        </div>";
        protected void Page_Load(object sender, EventArgs e) { }
        protected void btnSEARCH_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("hi");
            string searchTerm = tbSEARCH.Text;
            if (searchTerm.Substring(0, 1) != ".")
            {
                searchTerm = "." + searchTerm;
            }
            string statement = "SELECT [tldID], [TLD], [Price] FROM [TLD] WHERE [TLD] LIKE '" + searchTerm + "%'";
            SqlConnection conn = new SqlConnection(ConfigurationManager
                .ConnectionStrings["FastHosts-TDConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand com = new SqlCommand(statement, conn);
            SqlDataReader response = com.ExecuteReader();
            string endString = string.Empty;
            System.Diagnostics.Debug.WriteLine(response.Read());
            while (response.Read())
            {
                string id = response.GetInt32(0).ToString();
                string tld = response.GetString(1);
                string Price = response.GetDecimal(2).ToString();
                Price = Price.Substring(0, Price.Length - 2);
                System.Diagnostics.Debug.WriteLine(id.ToString(), tld, Price);
                endString += string.Format(searchitemstemplate, id, tld, Price);
                
            }
            resultsContainer.InnerHtml = endString;
        }
    }
}