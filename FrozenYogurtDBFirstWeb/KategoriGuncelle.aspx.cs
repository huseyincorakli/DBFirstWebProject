using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrozenYogurtDBFirstWeb
{
    public partial class KategoriGuncelle : System.Web.UI.Page
    {
        FrozenYogurtEntities entities = new FrozenYogurtEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(Request.QueryString["ID"]);
            if (!Page.IsPostBack)
            {
                var kategori = entities.kategori.Find(id);
                txtKategoriAdi.Text = kategori.KategoriAdi;
                TextBox1.Text = kategori.KategoriAciklama;

            }
        }


        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(Request.QueryString["ID"]);
            var kategori = entities.kategori.Find(id);
            kategori.KategoriAdi = txtKategoriAdi.Text;
            kategori.KategoriAciklama = TextBox1.Text;
            entities.SaveChanges();
            Response.Redirect("adminKategori.aspx");


        }
    }
}