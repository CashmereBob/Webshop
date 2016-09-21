using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


namespace WebShop_Group7.Models
{
    public class Produkts
    {
        public DataTable GetAllToDataTable(string query)
        {
            string sql;

            sql = query;

            DataTable dataTable = new DataTable();
            using (SqlCommand command = new SqlCommand(sql, connection))
            {
                SqlDataReader dataReader = command.ExecuteReader();
                dataTable.Load(dataReader);
                dataReader.Close();
            }
            return dataTable;
        }
    }
}