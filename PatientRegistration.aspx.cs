﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace ODCMSS
{
    public partial class PatientRegistration : System.Web.UI.Page
    {
        public String genderMF;
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

                switch (IsUserAndEmailExists(Server.HtmlEncode(TextBoxUN.Text), Server.HtmlEncode(TextBoxEmail.Text)))
                {
                    case 0:
                        AddUser();
                        //Panel1.Visible = false;
                        //Panel2.Visible = true;
                        break;
                    case -1:
                        InfoLabel.Text = "<p style = 'color:red'>Both email & usermane are exists<p>";
                        break;
                    case -2:
                        InfoLabel.Text = "<p style = 'color:red'>Email Exists<p>";
                        break;
                    case -3:
                        InfoLabel.Text = "<p style = 'color:red'>Username Exists<p>";
                        break;
                    default:
                        InfoLabel.Text = "<p style = 'color:red'>Something went wrong!! Please Try again later<p>";
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
                string SQLCommand = "INSERT INTO Userrr(username,Fullname,Password,Address,Phone_no,Email,Age,Gender,Weight,Height,EyeSight,HospitalName,HospitalID)VALUES('" + TextBoxUN.Text + "','" + fullname.Text + "','" + TextBoxPass.Text + "','" + address.Text + "','" + phonenumber.Text + "','" + TextBoxEmail.Text + "','" + age.Text + "','" + genderMF/*gender.Text*/ + "','" + weight.Text + "','" + height.Text + "','" + eyesight.Text + "','" + hospitalname.Text + "','" + hospitalid.Text + "')";
                SqlCommand sqlcommand = new SqlCommand(SQLCommand, sqlConnect);

                sqlcommand.Parameters.AddWithValue("@username", Server.HtmlEncode(TextBoxUN.Text));
                sqlcommand.Parameters.AddWithValue("@email", Server.HtmlEncode(TextBoxEmail.Text));
                sqlcommand.Parameters.AddWithValue("@pass", Server.HtmlEncode(TextBoxPass.Text));
                

                sqlcommand.ExecuteNonQuery();
                sqlConnect.Close();

                sqlConnect.Open();
                string SQLCommand1 = "Insert into UserDatabase (Username,Email,Password) values(@username, @email, @pass)";
                SqlCommand sqlcommand1 = new SqlCommand(SQLCommand1, sqlConnect);

                sqlcommand1.Parameters.AddWithValue("@username", Server.HtmlEncode(TextBoxUN.Text));
                sqlcommand1.Parameters.AddWithValue("@email", Server.HtmlEncode(TextBoxEmail.Text));
                sqlcommand1.Parameters.AddWithValue("@pass", Server.HtmlEncode(TextBoxPass.Text));
                

                sqlcommand1.ExecuteNonQuery();

                sqlConnect.Close();
                Response.Redirect("login.aspx");
            }
            catch (Exception ex)
            {
                InfoLabel.Text = "<p style='color:red' > Error: " + ex.Message + "</p>";
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
                InfoLabel.Text = "<p style='color:red' > Error: " + ex.Message + "</p>";
                return -5;
            }
            finally
            {
                sqlconn.Close();
            }
        }

        protected void Gender_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Gender_dropDown.SelectedIndex.Equals(1))
            {
                genderMF = "Male";
                //gender.Text = "Male";
            }
            else if (Gender_dropDown.SelectedIndex.Equals(2))
            {
                genderMF = "Female";
                //gender.Text = "Female";
            }
        }
    }
}