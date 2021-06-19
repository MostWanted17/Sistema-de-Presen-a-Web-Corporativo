<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddFunc.aspx.cs" Inherits="Sistema_de_Presença_Web_Corporativo.Inputs.AddFunc" %>

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
        body{
            background-color:rgb(94,62,161);
        }
        #header{
            top:0;
            height:38;
            border-bottom:1px solid white;
            margin: 1px 7px 0 7px;
        }
        #header h2{
            color:white;
            font-family:'Microsoft Sans Serif';
            font-size:20pt;
            font-weight:normal;
        }
         #div-config{
            width:100%;
            height:400px;
            margin-top:40px;
        }
        
        #Label2,#Label1,#Label3,#Label4,#Label5,#Label6,#Label7, #TextBox1,#TextBox3,#TextBox2, #TextBox4,#TextBox5,#DropDownList1, #DropDownList2{
            margin-top:5px;
            padding:0 5px 0 0;
        }
        #div-details{
            width:100%;
            height:100%;
            align-items:center;
            align-content:center;
            display: flex;
            flex-direction:column;
            justify-content: center;
        }
        #div-config h2, #Label2,#Label1,#Label3,#Label4,#Label5,#Label6,#Label7, #TextBox1,#TextBox3,#TextBox2, #TextBox4,#TextBox5,#DropDownList1, #DropDownList2{
            font-family:'Nirmala UI';
            font-size:18pt;
            color:rgb(62, 42, 104);
            font-weight:normal;
            
        }
         #Label2,#Label1,#Label3,#Label4,#Label5,#Label6,#Label7{
             color:white;
         }
        #Label2 {
            margin-right:170px;
        }
         #Label1{
             margin-right:160px;
         }
        #Label3{
            margin-right:175px;
        }
        #Label4{
             margin-right:155px;
        }
        #Label5{
             margin-right:165px;
        }
        #Label6{
             margin-right:160px;
        }
        #Label7{
             margin-right:150px;
        }
        #Button1{
            position:absolute;
            bottom:15px;
            right:15px;
            font-family:'Nirmala UI';
            font-size:18pt;
            background-color:rgb(169,150,198);
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
                <asp:Label ID="Label2" runat="server" Font-Names="Nirmala UI" Font-Size="9.75pt" Text="Nome"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" BackColor="#E6E7E9" BorderStyle="None" EnableTheming="True" Height="28px" Width="205px"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" Font-Names="Nirmala UI" Font-Size="9.75pt" Text="Apelido" ></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" BackColor="#E6E7E9" BorderStyle="None" EnableTheming="True" Height="28px" Width="205px"></asp:TextBox>
                <asp:Label ID="Label4" runat="server" Font-Names="Nirmala UI" Font-Size="9.75pt" Text="Endereço" ></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" BackColor="#E6E7E9" BorderStyle="None" EnableTheming="True" Height="28px" Width="205px"></asp:TextBox>
                  <asp:Label ID="Label3" runat="server" Font-Names="Nirmala UI" Font-Size="9.75pt" Text="Sexo" ></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#E6E7E9" Font-Names="Nirmala UI" Font-Size="9.75pt" BorderStyle="None" EnableTheming="True" Height="28px" Width="210px">
                    <asp:ListItem>Masculino</asp:ListItem>
                    <asp:ListItem>Femenino</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label5" runat="server" Font-Names="Nirmala UI" Font-Size="9.75pt" Text="Salário"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" BackColor="#E6E7E9" BorderStyle="None" EnableTheming="True" Height="28px" Width="205px"></asp:TextBox>
                <asp:Label ID="Label6" runat="server" Font-Names="Nirmala UI" Font-Size="9.75pt" Text="Telefone"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" BackColor="#E6E7E9" BorderStyle="None" EnableTheming="True" Height="28px" Width="205px"></asp:TextBox>
                 <asp:Label ID="Label7" runat="server" Font-Names="Nirmala UI" Font-Size="9.75pt" Text="Categoria"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" BackColor="#E6E7E9" Font-Names="Nirmala UI" Font-Size="9.75pt" BorderStyle="None" EnableTheming="True" Height="28px" Width="210px">

                </asp:DropDownList>
            </div>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Save" /> 
    </form>
</body>
</html>
