using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebShop_Group7.Models;

namespace WebShop_Group7.Admin
{
    public partial class List_Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!["Admin"]) //Kontrollerar om det finns en Admin session.
            {
                Response.Redirect("~/Admin/index.aspx"); //Om inte gå tillbaka till inloggning.
            }


        }

        protected void Button_Search_Click(object sender, EventArgs e)
        {
            HiddenField usr = (HiddenField)Master.FindControl("Usern");
            HiddenField pas = (HiddenField)Master.FindControl("Password");
            var us = usr.Value;
            var ps = pas.Value;

            Console.WriteLine(us + ps);
            
        }

        
    }
}