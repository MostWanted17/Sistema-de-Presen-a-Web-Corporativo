<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertDetails.aspx.cs" Inherits="Sistema_de_Presença_Web_Corporativo.Configuration.InsertDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Configuração do Admin</title>
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
        #div-config h2, #Label2,#TextBox1,#Label1,#TextBox2,#Label3,#TextBox3,#Label4,#TextBox4,#Label5,#TextBox5,#Label6,#DropDownList1, #Label7, #TextBox6, #Label8, #TextBox7{
            margin-left:60px;
            font-family:'Nirmala UI';
            font-size:18pt;
            color:rgb(62, 42, 104);
            font-weight:normal;
        }
         #Label2,#TextBox1,#Label1,#TextBox2,#Label3,#TextBox3,#Label4,#TextBox4,#Label5,#TextBox5,#Label6,#DropDownList1, #Label7, #TextBox6,  #Label8, #TextBox7{
            margin-top:5px;
        }
        #div-details{
            width:50%;
            height:100%;
            float:left;
            border-right:2px solid rgb(62, 42, 104);
            margin-right:-1px;
            display:flex;
            flex-direction:column;
        }
        #div-credencial{
            width:50%;
            height:100%;
            float:left;
            margin-left:-1px;
            display:flex;
            flex-direction:column;
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
        #CheckBox1{
            margin-top:5px;
            margin-left:170px;
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
<body  style="height: 100%; width: 100%; background-color:white;">
    <form id="form1" runat="server">
        <div id="header">
            <h2>CONFIGURAÇÃO</h2>
        </div>

        <div id="div-config">
            <div id="div-details">
                <h2>Detalhes</h2>
                <asp:Label ID="Label2" runat="server" Font-Names="Nirmala UI" Font-Size="9.75pt" Text="Nome" ForeColor="#A4A5A9"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" BackColor="#E6E7E9" BorderStyle="None" EnableTheming="True" Height="28px" Width="205px"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" Font-Names="Nirmala UI" Font-Size="9.75pt" Text="Apelido" ForeColor="#A4A5A9"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" BackColor="#E6E7E9" BorderStyle="None" EnableTheming="True" Height="28px" Width="205px"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" Font-Names="Nirmala UI" Font-Size="9.75pt" Text="Endereço" ForeColor="#A4A5A9"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" BackColor="#E6E7E9" BorderStyle="None" EnableTheming="True" Height="28px" Width="205px"></asp:TextBox>
                <asp:Label ID="Label4" runat="server" Font-Names="Nirmala UI" Font-Size="9.75pt" Text="Telefone" ForeColor="#A4A5A9"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" BackColor="#E6E7E9" BorderStyle="None" EnableTheming="True" Height="28px" Width="205px"></asp:TextBox>
                <asp:Label ID="Label5" runat="server" Font-Names="Nirmala UI" Font-Size="9.75pt" Text="Salário" ForeColor="#A4A5A9"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" BackColor="#E6E7E9" BorderStyle="None" EnableTheming="True" Height="28px" Width="205px"></asp:TextBox>
                <asp:Label ID="Label6" runat="server" Font-Names="Nirmala UI" Font-Size="9.75pt" Text="Sexo" ForeColor="#A4A5A9"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#E6E7E9" Font-Names="Nirmala UI" Font-Size="9.75pt" BorderStyle="None" EnableTheming="True" Height="28px" Width="205px">
                    <asp:ListItem>Masculino</asp:ListItem>
                    <asp:ListItem>Femenino</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div id="div-credencial">
                <h2>Credencial</h2>
                <asp:Label ID="Label7" runat="server" Font-Names="Nirmala UI" Font-Size="9.75pt" Text="Nome" ForeColor="#A4A5A9"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" BackColor="#E6E7E9" BorderStyle="None" EnableTheming="True" Height="28px" Width="205px" Enabled="False">admin</asp:TextBox>
                <asp:Label ID="Label8" runat="server" Font-Names="Nirmala UI" Font-Size="9.75pt" Text="Senha" ForeColor="#A4A5A9"></asp:Label>
                <asp:TextBox ID="TextBox7" runat="server" BackColor="#E6E7E9" BorderStyle="None" EnableTheming="True" Height="28px" Width="205px"></asp:TextBox>
                <asp:CheckBox ID="CheckBox1" runat="server" Font-Names="Nirmala UI" Font-Size="9.75pt" Text="Mostrar Senha" ForeColor="#A4A5A9"/>
            </div>
      </div>
        <asp:Button ID="Button1" runat="server" Text="Terminar" OnClick="Button1_Click" />   
    </form>
</body>
</html>
