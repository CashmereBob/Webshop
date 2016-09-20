using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebShop_Group7.Models
{
    public class DBConnection
    {
        private SqlConnection _connection = new SqlConnection();
        private string _connectionString = @"Data Source=Local;User ID=Magnus; Password=12345678;Integrated Security = false";

        public DBConnection()
        {
            try
            {
                OpenConnection();

                var admin = new List<int>();

                string sql = "Select ID From tbl_Users";
                SqlCommand myCommand = new SqlCommand(sql, _connection);

                using (SqlDataReader myDataReader = myCommand.ExecuteReader())
                {
                    while (myDataReader.Read())
                    {
                        admin.Add(int.Parse(myDataReader["ID"].ToString()));
                    }
                }

                if (admin.Count() < 1)
                {
                    AddAdmin();
                }

            }
            catch
            {

            }
            finally
            {
                CloseConnection();
            }
        }

        public void OpenConnection()
        {
            _connection.ConnectionString = _connectionString;
            _connection.Open();
        }

        public void CloseConnection()
        {
            _connection.Close();
        }

        public void AddAdmin()
        {
            var user = new UserService();

            var salt = user.CreateSalt(10);
            var password = user.GenerateSHA256Hash("password", salt);

            string sql = $"Insert Into tbl_Users (Firstname, Lastname, Adress, Postalcode, City, Email, Telephone, Mobilephone, Password, Salt, Pricegroup, Company, Admin) " + 
                $"Values('Admin', 'Admin', 'Admin', 'Admin', 'Admin', 'Admin', 'Admin', 'Admin', '{password}', '{salt}', '1', 'Admin', '1' )";
            SqlCommand myCommand = new SqlCommand(sql, _connection);
        }
    }
}