using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrozenYogurtDBFirstWeb
{
    public partial class adminKategori : System.Web.UI.Page
    {
        FrozenYogurtEntities entities = new FrozenYogurtEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            rptadminKategori.DataSource = entities.kategori.ToList();
            rptadminKategori.DataBind();
        }

       protected void KategoriSil(object sender , EventArgs e )
        {
            int id = int.Parse(((sender as LinkButton).NamingContainer.FindControl("labelId") as Label).Text);
            var k = entities.kategori.Find(id);
            //var kategori2 = entities.kategori.FirstOrDefault(x => x.KategoriId == id);
            //var kategori3 = from i in entities.kategori where i.KategoriId == id select i;

            //cascade yapılabilir.. 
            var urun = (from i in entities.urun where i.KategoriId == id select i).ToList();
            if (urun.Count != 0)
            {
                foreach (var item in urun)
                {
                    entities.urun.Remove(item);
                }
            }
            entities.kategori.Remove(k);
            entities.SaveChanges();
            Response.Redirect("adminKategori.aspx");
        }
    }
}