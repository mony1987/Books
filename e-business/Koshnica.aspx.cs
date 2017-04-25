using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace EL_bookstore
{
    public partial class Koshnica : Inherited
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static SqlConnection CreateConnection()
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=EPANDA-PC;Initial Catalog=BooksDBSQL;Integrated Security=True";
            return conn;
        }


        protected void Button1_Click(object sender, EventArgs e)
        {

            foreach (DataListItem li in DataList1.Items)
            {
                CheckBox s = (CheckBox)li.FindControl("CheckBox1");
                if (s.Checked == true)
                {
                    SqlConnection connection = CreateConnection();
                    using (connection)
                    {
                        SqlCommand myCommand = new SqlCommand("deleteBooks", connection);
                        myCommand.CommandType = CommandType.StoredProcedure;
                        myCommand.CommandText = "deleteBooks";

                        SqlParameter BookID = new SqlParameter("@BookID", SqlDbType.NVarChar);
                        BookID.Value = ((Label)li.FindControl("BookIDLabel")).Text;
                        myCommand.Parameters.Add(BookID);

                        SqlParameter countBooks = new SqlParameter("@s_id", SqlDbType.Int);
                        countBooks.Direction = ParameterDirection.Output;
                        myCommand.Parameters.Add(countBooks);

                        try
                        {
                            connection.Open();
                            SqlDataReader dr = myCommand.ExecuteReader();
                            int res = (Int32)myCommand.Parameters["@s_id"].Value;


                        }
                        catch (Exception ex) { }
                    }
                }
            }
            DataList1.DataBind();


        }

    }
}