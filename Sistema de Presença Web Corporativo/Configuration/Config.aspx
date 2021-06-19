<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Config.aspx.cs" Inherits="Sistema_de_Presença_Web_Corporativo.Configuration.Configuration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Configuração</title>
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
            position: absolute;
            margin: auto;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            text-align:center;
        }
        #div-config h2{
            font-family:'Nirmala UI';
            color:rgb(62, 42, 104);
            font-size:48pt;
            font-weight:bold;
        }
        #div-config p{
            font-family:'Nirmala UI';
            color:rgb(169, 150, 198);
            font-size:28pt;
            font-weight:bold;
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
<body style="height: 100%; width: 100%; background-color:white;">
    <form id="form1" runat="server">
    <div id="header">
        <h2>CONFIGURAÇÃO</h2>
    </div>
   
    <div id="div-config" style="height: 50%; width: 50%; background-color:white">
        <h2>Seja Bem Vindo!</h2>
        <p>Vamos Configurar o seu Programa...</p>
    </div>
        <asp:Button ID="Button1" runat="server" Text="Continue" OnClick="Button1_Click" />   
    </form>
    
</body>
</html>
