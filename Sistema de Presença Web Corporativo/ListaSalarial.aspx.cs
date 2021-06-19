using DocumentFormat.OpenXml.Wordprocessing;
using iTextSharp.text.html.simpleparser;
using Sistema_de_Presença_Corporativo.Controle;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Reflection.Metadata;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Data;
using iTextSharp.text.pdf;
using iTextSharp.text;
using System.IO;

namespace Sistema_de_Presença_Web_Corporativo
{
    public partial class ListaSalarial : System.Web.UI.Page
    {
        private int ano;
        private int mes;

        protected void Page_Load(object sender, EventArgs e)
        {
            /*ListaSalarialControl lista = new ListaSalarialControl();
            ano = Convert.ToInt32(Session["ano"]);
            mes = Convert.ToInt32(Session["mes"]);

           Session.Remove("ano");
           Session.Remove("mes");

           var ultimoDia = DateTime.DaysInMonth(ano, mes);
           var dataUltimoDia = new DateTime(ano, mes, ultimoDia);

           DataTable dt = new DataTable();
           DataColumn dCol1 = new DataColumn("Nome", typeof(System.String));
           DataColumn dCol2 = new DataColumn("Categoria", typeof(System.String));
           DataColumn dCol3 = new DataColumn("Telefone", typeof(System.String));
           DataColumn dCol4 = new DataColumn("Salario a Receber", typeof(System.String));
           DataColumn dCol5 = new DataColumn("Faltas", typeof(System.String));
           DataColumn dCol6 = new DataColumn("Faltas Justificadas (Todas)", typeof(System.String));
           DataColumn dCol7 = new DataColumn("Faltas Justificadas (Receber)", typeof(System.String));
           dt.Columns.Add(dCol1);
           dt.Columns.Add(dCol2);
           dt.Columns.Add(dCol3);
           dt.Columns.Add(dCol4);
           dt.Columns.Add(dCol5);
           dt.Columns.Add(dCol6);
           dt.Columns.Add(dCol7);

           int faltasReceber = 0;
           float receber = 0;
           for (int i = 0; i < lista.column().Item6; i++)
           {
               DataRow row1 = dt.NewRow();
               row1["Nome"] = lista.column().Item2[i];
               row1["Categoria"] = lista.column().Item3[i];
               row1["Telefone"] = lista.column().Item4[i];
               row1["Telefone"] = lista.column().Item4[i];
               faltasReceber = lista.pagarJustificativa(lista.column().Item1[i]);
               if (faltasReceber > 3)
               {
                   faltasReceber = 3;
               }

               receber = (lista.column().Item5[i] / ultimoDia) * (lista.presenca(lista.column().Item1[i], mes, ano) + faltasReceber);
               row1["Salario a Receber"] = receber;
               row1["Faltas"] = ultimoDia - lista.presenca(lista.column().Item1[i], mes, ano);
               row1["Faltas Justificadas (Todas)"] = lista.todas_justificada(lista.column().Item1[i]);
               row1["Faltas Justificadas (Receber)"] = faltasReceber;

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
       }*/
        }
    }
}