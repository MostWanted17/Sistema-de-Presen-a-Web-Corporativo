<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaSalarial.aspx.cs" Inherits="Sistema_de_Presença_Web_Corporativo.ListaSalarial" %>

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
        #div-config h2, #Label2, #TextBox1,#GridView1{
            font-family:'Nirmala UI';
            font-size:18pt;
            color:rgb(62, 42, 104);
            font-weight:normal;
        }
         #Label2,#TextBox1{
            margin-top:5px;
        }
         #Label2{
             padding:0 5px 0 0;
             color:white;
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
            <h2>LISTA SALARIAL</h2>
        </div>
        <div id="div-config">
            <div id="div-details">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </div>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Export PDF"/> 
    </form>
</body>
</html>
