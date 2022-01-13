using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrozenYogurtDBFirstWeb
{
    public partial class UrunEkle : System.Web.UI.Page
    {
        FrozenYogurtEntities entities = new FrozenYogurtEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                drplUrunEkle.DataSource = entities.kategori.ToList();
                drplUrunEkle.DataTextField = "KategoriAdi";
                drplUrunEkle.DataValueField = "KategoriId";
                drplUrunEkle.DataBind();
            }
        }
        protected void UrunEk(object sender  , EventArgs e)
        {
            urun u = new urun();
            u.UrunAdi = txtUrunAdi.Text;
            u.Fiyat = double.Parse(TextBox1.Text); 
            u.KategoriId = int.Parse(drplUrunEkle.SelectedItem.Value);
            entities.urun.Add(u);
            entities.SaveChanges();
            Response.Redirect("UrunListele.aspx");
        }
    }
}