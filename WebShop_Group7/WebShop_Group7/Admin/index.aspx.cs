using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebShop_Group7.Models;

namespace WebShop_Group7.Admin
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Login(object sender, EventArgs e)
        {
            var usr = TextBox_AdminUserName.Text;
            var pass = TextBox_AdminPassword.Text;


            var Login = new UserService();
            string salt = string.Empty;
            
            var password = string.Empty;
            bool isAdmin = false;

            DBConnection db = new DBConnection();

            try
            {
                db.OpenConnection();
                string sql1 = $"Select * From tbl_User Where Email = '{usr}'";
                SqlCommand myCommand = new SqlCommand(sql1, db._connection);

                using (SqlDataReader myDataReader = myCommand.ExecuteReader())
                {
                    while (myDataReader.Read())
                    {
                        salt = myDataReader["Salt"].ToString();
                        password = myDataReader["Password"].ToString();
                        isAdmin = (bool)myDataReader["Admin"];
                    }
                }
                myCommand.ExecuteNonQuery();
            }
            catch
            {

            }
            finally
            {
                db.CloseConnection();

            }
            if (Login.GenerateSHA256Hash(pass, salt) == password && isAdmin)
            {
                Session["new"] = "Admin";
                Response.Redirect("List_Order.aspx");
            }
            else
            {
                
            }
        }



    }
    }
