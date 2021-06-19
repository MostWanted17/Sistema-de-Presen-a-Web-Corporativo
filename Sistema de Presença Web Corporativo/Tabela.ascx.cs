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
    public partial class Tabela : System.Web.UI.UserControl
    {
        private string Nome_categoria;
        private int dia;
        private int ano;
        private int mes;
        protected void Page_Load(object sender, EventArgs e)
        {

            DateTime thisDay = DateTime.Today;
            dia = Convert.ToInt32(Session["dia"]);
            mes = Convert.ToInt32(Session["mes"]);
            ano = Convert.ToInt32(Session["ano"]);
            Nome_categoria = Convert.ToString(Session["categoria"]);
            Session.Remove("dia");
            Session.Remove("mes");
            Session.Remove("ano");
            Session.Remove("categoria");
            
            DataTable dt = new DataTable();
            DataColumn dCol1 = new DataColumn("ID", typeof(System.String));
            DataColumn dCol2 = new DataColumn("Nome", typeof(System.String));
            DataColumn dCol3 = new DataColumn("Telefone", typeof(System.String));
            DataColumn dCol4 = new DataColumn("Sexo", typeof(System.String));
            DataColumn dCol5 = new DataColumn("ID Status", typeof(System.String));
            DataColumn dCol6 = new DataColumn("Status", typeof(System.String));
            DataColumn dCol7 = new DataColumn("Justificado???", typeof(System.String));
            dt.Columns.Add(dCol1);
            dt.Columns.Add(dCol2);
            dt.Columns.Add(dCol3);
            dt.Columns.Add(dCol4);
            dt.Columns.Add(dCol5);
            dt.Columns.Add(dCol6);
            dt.Columns.Add(dCol7);

            if (thisDay.Day == dia && thisDay.Month == mes && thisDay.Year == ano)
            {
                DataColumn dCol8 = new DataColumn("Presenca", typeof(ButtonField));
                dt.Columns.Add(dCol8);
            }

            if (thisDay.Day == dia && thisDay.Month == mes && thisDay.Year == ano)
            {
                DataColumn dCol10 = new DataColumn("Justificativa", typeof(ButtonField));
                dt.Columns.Add(dCol10);
            }
            else if (thisDay.Day > dia || thisDay.Month > mes || thisDay.Year > ano)
            {
                DataColumn dCol9 = new DataColumn("justificativa", typeof(ButtonField));
                dt.Columns.Add(dCol9);
            }
            Ver_Categoria lista = new Ver_Categoria();
            for (int i = 0; i < lista.checkFunc(Nome_categoria).Item5; i++)
            {
                DataRow row1 = dt.NewRow();
                row1["ID"] = lista.checkFunc(Nome_categoria).Item1[i];
                row1["Nome"] = lista.checkFunc(Nome_categoria).Item2[i];
                row1["Telefone"] = lista.checkFunc(Nome_categoria).Item3[i];
                if (lista.checkFunc(Nome_categoria).Item4[i] == true)
                {
                    row1["Sexo"] = "Masculino";
                }
                else
                {
                    row1["Sexo"] = "Femenino";
                }
                if (lista.checkP(lista.checkFunc(Nome_categoria).Item1[i], dia, mes, ano).Item2 == 1)
                {
                    row1["ID Status"] = "Presente";

                }
                else if (lista.checkP(lista.checkFunc(Nome_categoria).Item1[i], dia, mes, ano).Item2 == 2)
                {
                    row1["ID Status"] = "Faltou";
                }
                else
                {
                    row1["ID Status"] = "";
                }
                row1["Status"] = lista.checkP(lista.checkFunc(Nome_categoria).Item1[i], dia, mes, ano).Item1;
                if (lista.selectJ(lista.checkP(lista.checkFunc(Nome_categoria).Item1[i], dia, mes, ano).Item1) == 0)
                {
                    row1["Justificado???"] = "";
                }
                else
                {
                    row1["Justificado???"] = "Justificado";
                }

                ButtonField bt = new ButtonField();
                bt.Text = "P/F";
                row1["Presenca"] = bt;
                ButtonField btJ = new ButtonField();
                btJ.Text = "Justificar";
                row1["Justificativa"] = btJ;
                dt.Rows.Add(row1);
            }
            foreach (DataColumn col in dt.Columns)
            {
                BoundField bField = new BoundField();
                bField.DataField = col.ColumnName;
                bField.HeaderText = col.ColumnName;
                GridView1.Columns.Add(bField);
            }
            GridView1.DataSource = dt;
            //Bind the datatable with the GridView.
            GridView1.DataBind();

            
        }
    }
}