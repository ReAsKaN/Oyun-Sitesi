using System;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace MiniOyunWebSite
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack && Request.QueryString["message"] != null)
            {
                lblMessage.Text = Request.QueryString["message"];
                lblMessage.CssClass = "text-danger";
            }
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                try
                {
                    connection.Open();

                    
                    string username = txtUsername.Text.Trim();
                    string password = txtPassword.Text.Trim();

                    
                    string query = "SELECT COUNT(*) FROM users WHERE username = @username AND password = @password";
                    using (MySqlCommand cmd = new MySqlCommand(query, connection))
                    {
                        cmd.Parameters.AddWithValue("@username", username);
                        cmd.Parameters.AddWithValue("@password", password);

                        int count = Convert.ToInt32(cmd.ExecuteScalar());

                        if (count > 0)
                        {
                            
                            lblMessage.Text = "Login successful! Redirecting...";
                            lblMessage.CssClass = "text-success";

                            
                            Session["username"] = username;

                            
                            Response.Redirect("Anasayfa.aspx");
                        }
                        else
                        {
                            
                            lblMessage.Text = "Invalid username or password.";
                            lblMessage.CssClass = "text-danger";
                        }
                    }
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "An error occurred: " + ex.Message;
                    lblMessage.CssClass = "text-danger";
                }
            }
        }
    }
}