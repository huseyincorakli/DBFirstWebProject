using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrozenYogurtDBFirstWeb
{
    public partial class KategoriEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            FrozenYogurtEntities entities = new FrozenYogurtEntities();
            kategori k = new kategori();
            k.KategoriAdi = txtKategoriAdi.Text;
            k.KategoriAciklama = TextBox1.Text;
            entities.kategori.Add(k);
            entities.SaveChanges();
            Response.Redirect("adminKategori.aspx");



        }
    }
}