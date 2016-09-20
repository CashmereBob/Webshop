using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebShop_Group7.Admin
{
    public partial class Edit_Product : System.Web.UI.Page
    {
        FileStream fs;
     
        protected void Page_Load(object sender, EventArgs e)
        {    
           // fs = new FileStream();    
        }

        protected void Button_Save_Click(object sender, EventArgs e)
        {

        }

        protected void Button_NewProductIMG_Click(object sender, EventArgs e)
        {
            if (!FileUpload1.HasFile)

            {       
                Label_ImgUpload.ForeColor = System.Drawing.Color.Red;
                Label_ImgUpload.Text = "Please Select Image File";
            }

            else
            {
                Label_ImgUpload.ForeColor = System.Drawing.Color.Green;
                Label_ImgUpload.Text = "Image Uploaded Sucessfully";

                
            }
        }
    }
}