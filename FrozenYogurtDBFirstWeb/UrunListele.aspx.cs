using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrozenYogurtDBFirstWeb
{
    public partial class UrunListele : System.Web.UI.Page
    {
        FrozenYogurtEntities entities = new FrozenYogurtEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            rptadminUrun.DataSource = (from i in entities.urun
                                       select new
                                       {
                                           i.UrunAdi,
                                           i.UrunId,
                                           i.kategori.KategoriAdi,
                                           i.Fiyat
                                       }).ToList();

            rptadminUrun.DataBind();
        }
        protected void UrunSil(object sender, EventArgs e)
        {
            int id = int.Parse(((sender as LinkButton).NamingContainer.FindControl("urunLabel") as Label).Text);
            var u = entities.urun.FirstOrDefault(x => x.UrunId == id);
            entities.urun.Remove(u);
            entities.SaveChanges(); 
            Response.Redirect("UrunListele.aspx");


        }
    }
}