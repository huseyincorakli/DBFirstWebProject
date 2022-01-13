using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrozenYogurtDBFirstWeb
{
    public partial class KategoriSil : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            FrozenYogurtEntities entities = new FrozenYogurtEntities();
            int id = Convert.ToInt16(Request.QueryString["ID"]); // gelen idyi id degiskenimize atadık
            //var kategori= from i in entities.kategori where i.KategoriId == id select i;
            var kategori = entities.kategori.Find(id);
            entities.kategori.Remove(kategori);
            entities.SaveChanges();
            Response.Redirect("adminKategori.aspx");

        }
    }
}