using Sistema_de_Presença_Corporativo.Controle;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Presença_Web_Corporativo
{
    public partial class Dashboard : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.Items.Clear();
            Conection conn = new Conection();
            List<string> cat = conn.Categorias();
            DropDownList1.Items.Add("Categoria");
            for (int i=0; i<cat.Count(); i++)
            {
                DropDownList1.Items.Add(cat[i]);
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["categoria"] = DropDownList1.SelectedValue;
            VerCategoria c1 = (VerCategoria)Page.LoadControl("VerCategoria.ascx");
            Panel1.Controls.Add(c1);
        }

        
    }
}