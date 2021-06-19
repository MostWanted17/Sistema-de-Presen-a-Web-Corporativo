using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Presença_Web_Corporativo.Inputs
{
    public partial class MesAno : System.Web.UI.Page
    {
        DateTime now = DateTime.Today;
        protected void Page_Load(object sender, EventArgs e)
        {
            ListItemCollection items = new ListItemCollection();
            for (int i = 2021; i <= now.Year; i++)
            {
                items.Add(new ListItem(i.ToString(), i.ToString()));
            }
            DropDownList1.DataSource = items;
            DropDownList1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["ano"] = DropDownList1.SelectedValue;
            Session["mes"] = DropDownList2.SelectedValue;
            Response.Redirect("../ListaSalarial.aspx");
            
        }
    }
}