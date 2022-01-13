using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrozenYogurtDBFirstWeb
{
    public partial class urunler : System.Web.UI.Page
    {
        FrozenYogurtEntities entities = new FrozenYogurtEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            //Repeater1.DataSource = (from i in entities.kategori select i).ToList();
            rptKategori.DataSource = entities.kategori.ToList();
            rptKategori.DataBind();
        }

        protected void rptKategori_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            Repeater rpt = (Repeater)e.Item.FindControl("rptUrun"); //rpt nesnesi oluşturup rptUrunu arattık 
            int kategoriId = Convert.ToInt16(DataBinder.Eval(e.Item.DataItem, "KategoriId")); //kategoriIdmizi bulup degiskene atadık 
            rpt.DataSource = (from i in entities.urun where i.KategoriId == kategoriId select i).ToList(); // degiskene atadıgımız  kategoriIdmiz ile eşleşen ürünleri listeledik...
            rpt.DataBind();
        }

        //protected void rptKategori_ItemDataBound1(object sender, RepeaterItemEventArgs e)
        //{

        //}
    }
}