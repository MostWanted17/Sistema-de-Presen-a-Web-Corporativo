<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_jus.aspx.cs" Inherits="Sistema_de_Presença_Web_Corporativo.Inputs.Add_jus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        *{
            padding:0;
            margin:0;
        }
        #header{
            top:0;
            height:38;
            border-bottom:1px solid rgb(62, 42, 104);
            margin: 1px 7px 0 7px;
        }
        #header h2{
            color:rgb(62, 42, 104);
            font-family:'Microsoft Sans Serif';
            font-size:20pt;
            font-weight:normal;
        }
         #div-config{
            width:100%;
            height:400px;
            margin-top:40px;
        }
        #div-config h2, #Label2, #DropDownList1{
            font-family:'Nirmala UI';
            font-size:18pt;
            color:rgb(62, 42, 104);
            font-weight:normal;
        }
         #Label2,#DropDownList1{
            margin-top:5px;
        }
         #Label2{
             padding:0 5px 0 0;
         }
        #div-details{
            
            width:100%;
            height:100%;
            align-items:center;
            text-align:center;
            align-content:center;
            display: flex;
 
  justify-content: center;
        }
        #Button1{
            position:absolute;
            bottom:15px;
            right:15px;
            font-family:'Nirmala UI';
            font-size:18pt;
            background-color:rgb(62, 42, 104);
            padding: 5px 20px;
            color:white;
            font-weight:bold;
            border:none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
            <h2>ADICIONAR</h2>
        </div>
        <div id="div-config">
            <div id="div-details">
                <asp:Label ID="Label2" runat="server" Font-Names="Nirmala UI" Font-Size="9.75pt" Text="Nome" ForeColor="#A4A5A9"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#E6E7E9" Font-Names="Nirmala UI" Font-Size="9.75pt" BorderStyle="None" EnableTheming="True" Height="28px" Width="205px">
                    <asp:ListItem>Motivo de Casamento</asp:ListItem>
                    <asp:ListItem>Motivo de Falecimento de Cônjuge (Pai,Mãe,Filho,Enteado,Irmão,Avós,Padrasto e Madrasta)</asp:ListItem>
                    <asp:ListItem>Motivo de Falecimento dos Sogros, Tios, Primos, Sobrinhos, Netos, Genros, Noras e Cunhados</asp:ListItem>
                    <asp:ListItem>Impossibilidade de prestar trabalho (Doença ou Acidente)</asp:ListItem>
                    <asp:ListItem>Familiar sob sua responsabilidade internado em estabelecimento hospitalar</asp:ListItem>
                    <asp:ListItem>Mulher trabalhadora em caso de aborto antes de sete meses anterior ao parto previsível</asp:ListItem>
                    <asp:ListItem>Outras (Prévia ou posterior autorizado) </asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Save" />   
    </form>
</body>
</html>
