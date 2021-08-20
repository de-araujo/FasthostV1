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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_OnClick(object sender, EventArgs e)
        {
            try
            {
                DBUtility.AddUser(tbFirstName.Text, tbLastName.Text, tbEmail.Text, tbUsername.Text, tbPassword.Text);

                Response.Redirect("Registration-Success.Aspx");
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