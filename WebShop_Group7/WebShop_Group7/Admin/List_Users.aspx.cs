using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebShop_Group7.Models;

namespace WebShop_Group7.Admin
{
    public partial class List_Users : System.Web.UI.Page
    {
        Users myUser = new Users();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session ["Admin"] == null)
            {
                Response.Redirect("~/Admin/index.aspx"); 

            }
            GridviewUser.DataSource = myUser.ListAllUsers();
        }
        protected void Button_Search_Click(object sender, EventArgs e)
        {

        }
    }
}