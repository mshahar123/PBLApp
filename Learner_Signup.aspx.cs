﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace RS_Project
{
    public partial class Learner_Signup : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void ResetControls()
        {
            NameTextBox.Text = "";
            FatherNameTextBox.Text = "";
            SurnameTextBox.Text = "";
            GenderDropDownList.ClearSelection();
            AgeTextBox.Text = "";
            CountryTextBox.Text = "";
            CityTextBox.Text = "";
            ExperienceTextBox.Text = "";
            CourseTextBox.Text = "";
            ContactTextBox.Text = "";
            InstructorPrefferedDropDownList.ClearSelection();
            UsernameTextBox.Text = "";
            PasswordTextBox.Text = "";
            ConfirmPasswordTextBox.Text = "";
        }
        protected void LearnerSignUpButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);

            try
            {




                string query = "insert into student_signup values(@name, @fname, @surname, @gender, @age, @country, @city, @address, @experience, @course, @contact, @instructor, @username, @password)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
                cmd.Parameters.AddWithValue("@fname", FatherNameTextBox.Text);
                cmd.Parameters.AddWithValue("@surname", SurnameTextBox.Text);
                cmd.Parameters.AddWithValue("@gender", GenderDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@age", Convert.ToInt32(AgeTextBox.Text));
                cmd.Parameters.AddWithValue("@country", CountryTextBox.Text);
                cmd.Parameters.AddWithValue("@city", CityTextBox.Text);
                cmd.Parameters.AddWithValue("@address", AddressTextBox.Text);
                cmd.Parameters.AddWithValue("@experience", ExperienceTextBox.Text);
                cmd.Parameters.AddWithValue("@course", CourseTextBox.Text);
                cmd.Parameters.AddWithValue("@contact", ContactTextBox.Text);
                cmd.Parameters.AddWithValue("@instructor", InstructorPrefferedDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@username", UsernameTextBox.Text);
                cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);
                con.Open();

                int a = cmd.ExecuteNonQuery();

                if (a > 0)
                {
                    //Response.Write("<script>alert('You have Registered Successfully ')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire( 'Success','You have Registered Successfully ','Success')", true);

                    ResetControls();
                }
                else
                {
                    //Response.Write("<script>alert('Registration Failed.. Try Another Username')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire( 'Failure','Registration Failed.. Try Another Username','Error')", true);

                }

            }
            catch(SqlException ex)
            {
                if(ex.Message.Contains("UNIQUE KEY constraint"))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire( 'Failure','Registration Failed.."+ UsernameTextBox.Text+" already Exist. Try Another Username','Error')", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire( 'Failure','Registration Failed..','Error')", true);
                }
            }
            finally
            {
                con.Close();
            }

            
        }
    }
}