using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrozenYogurtDBFirstWeb
{
    public partial class GirisYap : System.Web.UI.Page
    {
        FrozenYogurtEntities entities = new FrozenYogurtEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var u = entities.adminuser.FirstOrDefault(x => x.Username == TextBox1.Text);
            if (u!=null)
            {
                bool sifreKontrol = BCrypt.Net.BCrypt.Verify(TextBox2.Text, u.Password);
                if (sifreKontrol == true) Response.Redirect("adminAnasayfa.aspx");
                else Response.Write("<script>alert('Kullanıcı adı veya  şifre hatalı');</script>");
               
            }
        }
    }
}