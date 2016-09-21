using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace WebShop_Group7.Models
{
    public class Users
    {
        DBConnection db = new DBConnection();

        public DataTable ListAllUsers()
        {

            try { 
            using (DataTable dt = new DataTable("Användare"))
            {
                dt.Columns.Add("ID", typeof(int));
                dt.Columns.Add("Namn", typeof(string));
                dt.Columns.Add("Efternamn", typeof(string));
                dt.Columns.Add("Email", typeof(string));
                dt.Columns.Add("Prisgrupp", typeof(int));

                db.OpenConnection();
                string sql = "Select * From tbl_User";
                SqlCommand myCommand = new SqlCommand(sql, db._connection);

                    using (SqlDataReader myDataReader = myCommand.ExecuteReader())
                    {
                        while (myDataReader.Read())
                        {
                            dt.Rows.Add(int.Parse(myDataReader["ID"].ToString()),
                                myDataReader["Namn"].ToString(),
                                myDataReader["Efternamn"].ToString(),
                                myDataReader["Email"].ToString(),
                                int.Parse(myDataReader["Prisgrupp"].ToString())
                                );
                        }
                        return dt;

                    }
                }
            }
            catch
            {
                // TODO EXCEPTION
                return null;
            }
            finally
            {
                db.CloseConnection();
            }

        }
    }
}