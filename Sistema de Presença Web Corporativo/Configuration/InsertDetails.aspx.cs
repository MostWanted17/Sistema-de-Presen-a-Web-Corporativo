using Sistema_de_Presença_Corporativo.Controle;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Presença_Web_Corporativo.Configuration
{
    public partial class InsertDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string nome = TextBox1.Text;
            string apelido = TextBox2.Text;
            string endereco = TextBox3.Text;
            int tel = Convert.ToInt32(TextBox4.Text);
            double salario = Convert.ToDouble(TextBox5.Text);
            string log = TextBox6.Text;
            string senha = TextBox7.Text;
            string sexo = DropDownList1.SelectedValue;

                DbCreation db = new DbCreation();
                int combo;
                if (sexo == "Masculino")
                {
                    combo = 1;
                }
                else
                {
                    combo = 0;
                }
                db.insertAdmin(log, senha, nome, apelido, endereco, combo, (float)salario, tel);
                Response.Redirect("../Login.aspx");
                //MessageBox.Show("Usuário: " + usuario.Text + "\nSenha: " + textBox1.Text, "Login");



        }
    }
}