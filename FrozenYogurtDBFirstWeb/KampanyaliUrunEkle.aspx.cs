using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrozenYogurtDBFirstWeb
{
    public partial class KampanyaliUrunEkle : System.Web.UI.Page
    {
        FrozenYogurtEntities entities = new FrozenYogurtEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            kampanyaliurun kUrun = new kampanyaliurun();
            kUrun.BaslikAdi = txtBaslikAdi.Text;
            kUrun.BaslikIcerikAdi = TextBox2.Text;
            kUrun.BaslikFiyat = TextBox3.Text;
            kUrun.BaslikAciklamasi = TextBox1.Text;
            entities.kampanyaliurun.Add(kUrun);
            entities.SaveChanges();
            Response.Redirect("adminKampanya.aspx");
        }
    }
}