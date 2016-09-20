using System;
using System.Collections.Generic;
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
            
            var Login = new UserService();
            string salt = Login.CreateSalt(10);

            string HashedPassed = Login.GenerateSHA256Hash(TextBox_AdminPassword.Text, salt);


            Response.Redirect($"~/login.aspx?Username={TextBox_AdminUserName.Text}&Password={HashedPassed}");
        }
    }
}