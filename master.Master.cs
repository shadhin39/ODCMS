using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ODCMSS
{
    public partial class master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] != null || Session["sender"] != null)
                {
                    nameLabel.Text = (string)Session["Username"];
                    signIn.Visible = false;
                    //signOut.Visible = true;
                }
                else
                {
                    //signOut.Visible = false;
                    signIn.Visible = true;
                    //Response.Redirect("~/login.aspx");
                }
            }
            else
            {
                if (Session["Username"] != null)
                {
                    nameLabel.Text = (string)Session["Username"];
                    signIn.Visible = false;
                    //signOut.Visible = true;
                }
                else
                {
                    //signOut.Visible = false;
                    signIn.Visible = true;
                    //Response.Redirect("~/login.aspx");
                }
            }
            
        }

        protected void signIn_Click(object sender, EventArgs e)
        {
            //Response.Redirect("~/login.aspx");
        }

        protected void signOut_Click(object sender, EventArgs e)
        {
            if(Session["sender"] != null)
            {
                SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ToString());

                string OnlineStatusStr = "update UserDatabase set OnlineStatus = 0 where Username = @user";

                SqlCommand comm1 = new SqlCommand(OnlineStatusStr, sqlconn);
                string value = (string)Session["sender"];
                comm1.Parameters.AddWithValue("@user", value);
                sqlconn.Open();
                comm1.ExecuteNonQuery();
                sqlconn.Close();
                FormsAuthentication.SignOut();
            }
            
             Session["Username"] = "";
            Session["sender"] = "";
            Response.Redirect("index.aspx");
            //Session["Username"] = null;
            //Response.Redirect("~/Index.aspx");
        }

        protected void signIn_Click1(object sender, EventArgs e)
        {

        }
    }
}