using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrozenYogurtDBFirstWeb
{
    public partial class iletisim1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
         private  FrozenYogurtEntities entitie = new FrozenYogurtEntities();
        protected void btnGonder_Click(object sender, EventArgs e)
        {
            iletisim i = new iletisim();
            i.AdSoyad = txtAdSoyad.Text;
            i.Email = txtEmail.Text;
            i.Konum = txtKonu.Text;
            i.Mesaj = txtMesaj.Text;

            entitie.iletisim.Add(i);
            
            entitie.SaveChanges();
            txtAdSoyad.Text = "";
            txtEmail.Text = "";
            txtKonu.Text = "";
            txtMesaj.Text = "";
        
        }
    }
}