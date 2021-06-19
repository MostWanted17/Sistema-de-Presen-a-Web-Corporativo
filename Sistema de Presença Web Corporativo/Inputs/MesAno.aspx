<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MesAno.aspx.cs" Inherits="Sistema_de_Presença_Web_Corporativo.Inputs.MesAno" %>

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
        
        #Label2,#Label1,#Label3,#TextBox1,#TextBox2,#DropDownList1,#DropDownList2{
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
        #div-config h2, #Label2,#Label1,#Label3, #TextBox1,#TextBox2,#DropDownList1,#DropDownList2{
            font-family:'Nirmala UI';
            font-size:18pt;
            color:rgb(62, 42, 104);
            font-weight:normal;
            
        }
         #Label2,#Label1,#Label3{
             margin-right:150px;
             color:white;
         }
         #Label1{
             margin-right:170px;
         }
         #Label2{
             margin-right:170px;
         }
        #Label3 {
            margin-right:170px;
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
            <h2>ESCOLHER</h2>
        </div>
        <div id="div-config">
            <div id="div-details">
                <asp:Label ID="Label2" runat="server" Font-Names="Nirmala UI" Font-Size="9.75pt" Text="Mês" ></asp:Label>
                               <asp:DropDownList ID="DropDownList2" runat="server" BackColor="#E6E7E9" Font-Names="Nirmala UI" Font-Size="9.75pt" BorderStyle="None" EnableTheming="True" Height="28px" Width="205px">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                   <asp:ListItem>3</asp:ListItem>
                                   <asp:ListItem>4</asp:ListItem>
                                   <asp:ListItem>5</asp:ListItem>
                                   <asp:ListItem>6</asp:ListItem>
                                   <asp:ListItem>7</asp:ListItem>
                                   <asp:ListItem>8</asp:ListItem>
                                   <asp:ListItem>9</asp:ListItem>
                                   <asp:ListItem>10</asp:ListItem>
                                   <asp:ListItem>11</asp:ListItem>
                                   <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
                  <asp:Label ID="Label3" runat="server" Font-Names="Nirmala UI" Font-Size="9.75pt" Text="Ano"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#E6E7E9" Font-Names="Nirmala UI" Font-Size="9.75pt" BorderStyle="None" EnableTheming="True" Height="28px" Width="205px">
                    
                </asp:DropDownList>
            </div>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click"/> 
    </form>
</body>
</html>
