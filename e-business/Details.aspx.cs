﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlClient;
namespace EL_bookstore
{
    public partial class Details : Inherited
    {




        public static SqlConnection CreateConnection()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = @"Data Source=EPANDA-PC;Initial Catalog=BooksDBSQL;Integrated Security=True";
            return conn;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = CreateConnection();
            using (connection)
            {
                SqlCommand myCommand = new System.Data.SqlClient.SqlCommand("InsertShop", connection);
                myCommand.CommandType = CommandType.StoredProcedure;
                myCommand.CommandText = "InsertShop";

                SqlParameter parOrderID = new SqlParameter("@OrderID", SqlDbType.NVarChar);
                parOrderID.Value = "user1";
                myCommand.Parameters.Add(parOrderID);

                SqlParameter parBookID = new SqlParameter("@BookID", SqlDbType.NVarChar);
                parBookID.Value = ((Label)FormView1.FindControl("BookIDLabel")).Text;
                myCommand.Parameters.Add(parBookID);

                SqlParameter parBookTitle = new SqlParameter("@BookTitle", SqlDbType.NVarChar);
                parBookTitle.Value = ((Label)FormView1.FindControl("BookTitleLabel")).Text;
                myCommand.Parameters.Add(parBookTitle);

                SqlParameter parPrice = new SqlParameter("@Price", SqlDbType.Money);
                parPrice.Value = ((Label)FormView1.FindControl("BookPriceLabel")).Text;
                myCommand.Parameters.Add(parPrice);

                SqlParameter parQty = new SqlParameter("@Qty", SqlDbType.Int);
                parQty.Value = ((TextBox)FormView1.FindControl("TextBox1")).Text;
                myCommand.Parameters.Add(parQty);



                try
                {
                    connection.Open();
                    myCommand.ExecuteNonQuery();
                    Button btn = (Button)sender;
                    btn.Text = " Книгата/ите бяха добавени успешно ";
                    btn.Enabled = false;

                }
                catch (SqlException ol)
                {
                    Label2.Text = ol.ToString();
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

    }
}