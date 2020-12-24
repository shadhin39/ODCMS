using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace ODCMSS
{
    public partial class DoctorRegistration : System.Web.UI.Page
    {
        public string specialist, Consultancy;
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Web.UI.ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            //LoadingImage.Attributes.CssStyle.Add("opacity", "0");
            submit.Attributes.CssStyle.Add("cursor", "allowed");
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (Page.IsValid)
            {

                switch (IsUserAndEmailExists(Server.HtmlEncode(username1.Text), Server.HtmlEncode(email1.Text)))
                {
                    case 0:
                        AddUser();
                        //Panel1.Visible = false;
                        //Panel2.Visible = true;
                        break;
                    case -1:
                        InfoLabel0.Text = "<p style = 'color:red'>Both email & usermane are exists<p>";
                        break;
                    case -2:
                        InfoLabel0.Text = "<p style = 'color:red'>Email Exists<p>";
                        break;
                    case -3:
                        InfoLabel0.Text = "<p style = 'color:red'>Username Exists<p>";
                        break;
                    default:
                        InfoLabel0.Text = "<p style = 'color:red'>Something went wrong!! Please Try again later<p>";
                        break;
                }

            }
            else
            {
                //LoadingImage.Attributes.CssStyle.Add("opacity", "0");
                submit.Attributes.CssStyle.Add("cursor", "allowed");
            }
        }
        protected void AddUser()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
            SqlConnection sqlConnect = new SqlConnection(connectionString);

            try
            {

                sqlConnect.Open();

                //string SQLCommand = "Insert into UserDatabase (Username,Email,Password) values(@username, @email, @pass)";
                string SQLCommand = "INSERT INTO Doctorr(username,Fullname,Password,Specialist,EmergencyContactNumber,Email,VisitFee,HospitalName,HospitalAddress,OnPhoneConsultancy)VALUES('" + ("Doctor "+username1.Text) + "','" + fullname1.Text + "','" + password1.Text + "','" + specialist/*specialist1.Text*/ + "','" + emergencycontactnumber1.Text + "','" + email1.Text + "','" + visitfee1.Text + "','" + hospitalname1.Text + "','" + hospitaladdress1.Text + "', ' " + Consultancy/*onphoneconsultancy1.Text*/ + " ')";

                //string SQLCommand = "INSERT INTO UserDatabase(username,Fullname,Password,Address,Phone_no,Email,Age,Gender,Weight,Height,EyeSight,HospitalName,HospitalID)VALUES('" + TextBoxUN.Text + "','" + fullname.Text + "','" + TextBoxPass.Text + "','" + address.Text + "','" + phonenumber.Text + "','" + TextBoxEmail.Text + "','" + age.Text + "','" + gender.Text + "','" + weight.Text + "','" + height.Text + "','" + eyesight.Text + "','" + hospitalname.Text + "','" + hospitalid.Text + "')";
                SqlCommand sqlcommand = new SqlCommand(SQLCommand, sqlConnect);

                sqlcommand.Parameters.AddWithValue("@username", Server.HtmlEncode(username1.Text));
                sqlcommand.Parameters.AddWithValue("@email", Server.HtmlEncode(email1.Text));
                sqlcommand.Parameters.AddWithValue("@pass", Server.HtmlEncode(password1.Text));
                

                sqlcommand.ExecuteNonQuery();
                sqlConnect.Close();
                sqlConnect.Open();
                string SQLCommand1 = "Insert into UserDatabase (Username,Email,Password) values(@username, @email, @pass)";
                SqlCommand sqlcommand1 = new SqlCommand(SQLCommand1, sqlConnect);

                sqlcommand1.Parameters.AddWithValue("@username", Server.HtmlEncode(username1.Text));
                sqlcommand1.Parameters.AddWithValue("@email", Server.HtmlEncode(email1.Text));
                sqlcommand1.Parameters.AddWithValue("@pass", Server.HtmlEncode(password1.Text));


                sqlcommand1.ExecuteNonQuery(); 

                sqlConnect.Close();
                Response.Redirect("login.aspx");

            }
            catch (Exception ex)
            {
                InfoLabel0.Text = "<p style='color:red' > Error: " + ex.Message + "</p>";
            }
            finally
            {
                sqlConnect.Close();
            }

        }


        protected int IsUserAndEmailExists(string username, string email)
        {
            string stringconnection = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(stringconnection);

            try
            {
                string command_string = "ProcIsUserExist @Uname, @EId";
                SqlCommand sqlcom = new SqlCommand(command_string, sqlconn);
                sqlcom.Parameters.AddWithValue("@Uname", username);
                sqlcom.Parameters.AddWithValue("@Eid", email);

                sqlconn.Open();
                int n = Convert.ToInt32(sqlcom.ExecuteScalar());
                sqlconn.Close();
                return n;
            }
            catch (Exception ex)
            {
                InfoLabel0.Text = "<p style='color:red' > Error: " + ex.Message + "</p>";
                return -5;
            }
            finally
            {
                sqlconn.Close();
            }
        }

        protected void specialist_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (specialist_dropDown.SelectedIndex.Equals(1))
            {
                specialist = "Medicine";
                //gender.Text = "Male";
            }
            else if (specialist_dropDown.SelectedIndex.Equals(2))
            {
                specialist = "Cardiologist";
                //gender.Text = "Female";
            }
            else if (specialist_dropDown.SelectedIndex.Equals(3))
            {
                specialist = "Surgery";
                //gender.Text = "Female";
            }
            else if (specialist_dropDown.SelectedIndex.Equals(4))
            {
                specialist = "Oncologist";
                //gender.Text = "Female";
            }
        }

        protected void onphoneconsultancy_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (onphoneconsultancy_DropDownList1.SelectedIndex.Equals(1))
            {
                Consultancy = "Yes";
                //gender.Text = "Male";
            }
            else if (onphoneconsultancy_DropDownList1.SelectedIndex.Equals(2))
            {
                Consultancy = "No";
                //gender.Text = "Female";
            }
            
        }
    }
}