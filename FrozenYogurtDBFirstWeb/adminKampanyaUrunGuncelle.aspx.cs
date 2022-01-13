using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrozenYogurtDBFirstWeb
{
    public partial class adminKampanyaUrunGuncelle : System.Web.UI.Page
    {
        FrozenYogurtEntities entities = new FrozenYogurtEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(Request.QueryString["ID"]);
            if (!Page.IsPostBack)
            {
                var u = entities.kampanyaliurun.Find(id);
                txtBaslikAdi.Text = u.BaslikAdi.TrimEnd();
                TextBox2.Text = u.BaslikIcerikAdi.TrimEnd();
                TextBox3.Text = u.BaslikFiyat.TrimEnd();
                TextBox1.Text = u.BaslikAciklamasi.TrimEnd();
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(Request.QueryString["ID"]);
            var u = entities.kampanyaliurun.Find(id);
            u.BaslikAdi = txtBaslikAdi.Text;
            u.BaslikIcerikAdi = TextBox2.Text;
            u.BaslikFiyat = TextBox3.Text;
            u.BaslikAciklamasi = TextBox1.Text;
            entities.SaveChanges();
            Response.Redirect("adminKampanya.aspx");
        }
    }
}