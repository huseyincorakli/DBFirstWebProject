using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BCrypt.Net;

namespace FrozenYogurtDBFirstWeb
{
    public partial class KayitOl : System.Web.UI.Page
    {
        FrozenYogurtEntities entities = new FrozenYogurtEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            adminuser u = new adminuser();
            u.Username = TextBox1.Text;
            u.Password = BCrypt.Net.BCrypt.HashPassword(TextBox2.Text);
            entities.adminuser.Add(u);
            entities.SaveChanges();
            Response.Redirect("GirisYap.aspx");
        }
    }
}