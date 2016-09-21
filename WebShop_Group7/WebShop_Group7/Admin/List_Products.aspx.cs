using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebShop_Group7.Models;
using WebShop_Group7.Models;

namespace WebShop_Group7
{
  
    public partial class List_Products : System.Web.UI.Page
    {
        DBConnection connection;
        Produkts products;
        string sql;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new DBConnection();
            products = new Produkts();
            sql = $@"SELECT * FROM tbl_Product";
            products.GetAllToDataTable(sql);
            connection.CloseConnection();
          
        }
    }
}