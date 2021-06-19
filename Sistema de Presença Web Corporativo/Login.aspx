<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Sistema_de_Presença_Web_Corporativo.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title></title>
    <style>
        *{
            padding:0;
            margin:0;
        }
        #div-login{
            position: absolute;
            margin: auto;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            border-radius:20px;
        }
        #Label1{
            position: absolute;
            top:100px;
            left: 40px;
        }
        #Label2{
            position: absolute;
            top:180px;
            left: 40px;
        }
        #Label3{
            position: absolute;
            top:230px;
            left: 40px;
        }
        #TextBox1{
            position: absolute;
            top:200px;
            left: 40px;
            
        }
        #TextBox2{
            position: absolute;
            top:250px;
            left: 40px;
        }
        #CheckBox1, #Label4{
            position: absolute;
            top:285px;
            left: 140px;
            color:#A4A5A9;
        }
        #Label4{
            left:160px;
        }
        #Button1{
            position: absolute;
            top:310px;
            left: 40px;
            height:35px;
            width:205px;
            border:none;
            background-color:rgb(62, 42, 104);
            color:white;
            font-family:'Nirmala UI';
            font-size:14pt;
        }
        #Button2{
            position: absolute;
            top:350px;
            left: 40px;
            height:35px;
            width:205px;
            background-color:white;
            border:2px solid rgb(62, 42, 104);
            color:rgb(62, 42, 104);
            font-family:'Nirmala UI';
            font-size:14pt;
        }
        #Label5{
            position: absolute;
            top:450px;
            left: 140px;
            color:rgb(62, 42, 104);
        }
    </style>
</head>
<body style="height: 100%; width: 100%; background-color:black;">
    <form id="form1" runat="server">
        <div id="div-login" style="height: 544px; width: 285px; background-color:white">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Nirmala UI" Font-Size="20.25pt" ForeColor="#3E2A68" Text="LOGIN"></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Names="Nirmala UI" Font-Size="9.75pt" Text="Nome do Usuário" ForeColor="#A4A5A9"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" BackColor="#E6E7E9" BorderStyle="None" EnableTheming="True" Height="28px" Width="205px"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Font-Names="Nirmala UI" Font-Size="9.75pt" Text="Senha" ForeColor="#A4A5A9"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" BackColor="#E6E7E9" BorderStyle="None" EnableTheming="True" Height="28px" Width="205px"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Font-Names="Nirmala UI" Font-Size="9.75pt" Text="Mostrar Senha" ForeColor="#A4A5A9"></asp:Label>
            <asp:CheckBox ID="CheckBox1" runat="server"/>
            <asp:Button ID="Button1" runat="server" Text="Entrar" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Limpar" />
            <asp:Label ID="Label5" runat="server" Font-Names="Nirmala UI" Font-Size="9.75pt" Text="Esqueceu a Senha?"></asp:Label>
        </div>
    </form>
</body>
</html>