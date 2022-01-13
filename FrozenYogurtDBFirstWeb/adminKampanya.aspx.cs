using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrozenYogurtDBFirstWeb
{
    public partial class adminKampanya : System.Web.UI.Page
    {
        FrozenYogurtEntities entities = new FrozenYogurtEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            rptadminKampanya.DataSource = entities.kampanyaliurun.ToList();
            rptadminKampanya.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            int id = int.Parse(((sender as LinkButton).NamingContainer.FindControl("adKampanyaLabel") as Label).Text);
            var k = entities.kampanyaliurun.FirstOrDefault(x => x.BaslikId == id);
            entities.kampanyaliurun.Remove(k);
            entities.SaveChanges();
            Response.Redirect("adminKampanya.aspx");

        }
    }
}