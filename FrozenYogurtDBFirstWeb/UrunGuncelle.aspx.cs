using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrozenYogurtDBFirstWeb
{
    public partial class UrunGuncelle : System.Web.UI.Page
    {
        FrozenYogurtEntities entities = new FrozenYogurtEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int id = Convert.ToInt16(Request.QueryString["ID"]);
                var u = entities.urun.Find(id);
                drplUrunGuncelle.DataSource = entities.kategori.ToList();
                drplUrunGuncelle.DataTextField = "KategoriAdi";
                drplUrunGuncelle.DataValueField = "KategoriId";
                drplUrunGuncelle.DataBind();
                drplUrunGuncelle.Items.FindByValue(u.KategoriId.ToString()).Selected = true;
                ugtxtUrunAdi.Text = u.UrunAdi;
                ugTextBox1.Text = u.Fiyat.ToString();
            }
        }
        protected void UrunGu(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(Request.QueryString["ID"]);
            var u = entities.urun.Find(id);
            u.KategoriId = Convert.ToInt16(drplUrunGuncelle.SelectedItem.Value);
            u.UrunAdi = ugtxtUrunAdi.Text;
            u.Fiyat = double.Parse(ugTextBox1.Text);
            entities.SaveChanges();
            Response.Redirect("UrunListele.aspx");


        }
    }
}