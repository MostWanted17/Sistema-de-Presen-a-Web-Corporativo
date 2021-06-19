using Sistema_de_Presença_Corporativo.Controle;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Presença_Web_Corporativo
{
    public partial class VerCategoria : System.Web.UI.UserControl
    {
        string Nome_categoria;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Nome_categoria = Convert.ToString(Session["categoria"]);
            Session.Remove("categoria");
            DateTime now = DateTime.Today;
            for (int i = 2021; i <= now.Year; i++)
            {

                DropDownList3.Items.Add(Convert.ToString(i));
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["dia"] = DropDownList1.SelectedValue;
            Session["mes"] = DropDownList2.SelectedValue;
            Session["ano"] = DropDownList3.SelectedValue;
            Session["categoria"] = Nome_categoria;
            Tabela c2 = (Tabela)Page.LoadControl("Tabela.ascx");
            Panel2.Controls.Add(c2);

        }
    }
}