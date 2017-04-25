﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EL_bookstore
{
    public partial class Menu : Inherited
    {
      

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("details.aspx?BookID=" + GridView2.SelectedValue);
        }

        protected void LinkBtn_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            Response.Redirect("Menu.aspx?Category=" + btn.Text);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                Response.Redirect("Menu.aspx?Criterion=" + TextBox1.Text);
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            String Category = Request.QueryString["Category"];
String Criterion = Request.QueryString["Criterion"];
if(Category !=null){
String SString;
SString = "SELECT BookID,BookType, BookTitle,BookAuthor,BookPrice FROM Books WHERE BookType ='"+ Category +"' ORDER BY BookId";
SqlDataSource2.SelectCommand = SString;
}
else if (Criterion != null)
{
String SString;
SString = "SELECT BookID, BookType, BookTitle, BookAuthor, BookPrice " +
"FROM Books" +
" WHERE (BookID LIKE '%" + Criterion + "%' ) OR" +
" (BookType LIKE '%" + Criterion + "%') OR" +
" (BookTitle LIKE '%" + Criterion + "%') OR" +
" (BookAuthor LIKE '%" + Criterion + "%') OR" +
" (BookPrice LIKE '%" + Criterion + "%')" +
" ORDER BY BookID";
SqlDataSource2.SelectCommand = SString;
}

        }

        

      
    }
}