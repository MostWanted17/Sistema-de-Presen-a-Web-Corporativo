<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Sistema_de_Presença_Web_Corporativo.Dashboard" %>

<%@ Register Src="~/VerCategoria.ascx" TagPrefix="uc1" TagName="VerCategoria" %>


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
           width:100%;
           height:100%;
       }
       #form1{
            width:100%;
           height:100%;
           display:flex;
           flex-direction:row;
       }
       #side{
           width:20%;
           min-height:700px;
           background-color:rgb(76, 51, 130);
           justify-content:center;
           text-align:center;
          align-self:center;
          align-items:center;
          align-content:center;
       }
       #aside{
           width:80%;
           min-height:700px;
           background-color:rgb(169, 150, 198);
           display:flex;
           flex-direction:column;
       }
       #header{
            width:100%;
           min-height:30px;
            background-color:rgb(62, 42, 104);
            display:flex;
            flex-direction:row;
           
       }
       #DropDownList1{
           width:80%;
           height:40px;
           font-family:"Microsoft Sans Serif";
           background-color:rgb(62, 42, 104);

       }
       
       #Image1{
           width:40px;
           height:40px;
           background-color:orange;
           margin: 10px;
       }
        #Button1{
            width:100%;
           height:40px;
            background-color:rgb(76, 51, 130);
            border:none;
            color:white;
            text-align:left;
            padding:0 0 0 4px;
            font-family:"Microsoft Sans Serif";
            float:left;
        }
        #Button2{
            width:20%;
            height:40px;
            background-color:rgb(76, 51, 130);
            border:none;
            float:right;
            color:white;
            font-size:18pt;
        }
        #Panel1{
            height:100%;
            width:100%;
            display:flex;
            flex-direction:row;
        }
        #verCategoria{
            width:100%;
            height:30%;
            display:flex;
            flex-direction:row;
        }
        #grid{
            width:100%;
            height:70%;
        }
        #tabela{
            height:100%;
            width:100%;
        }
        #Label1{
            padding:0 10px 0 0;
        }
        #Image2{
            margin-left:100px;
            margin-top:0px;
            width:40px;
            height:32px;
            background-image:url("img/usuario-de-perfil.png");
            background-position:center;
            background-size:cover;
            background-repeat:no-repeat;
        }
    </style>
</head>
<body>
   
    
       <form id="form1" runat="server">
           <div id="side">
               <asp:Image ID="Image1" runat="server" />
               <asp:DropDownList ID="DropDownList1" runat="server" Forecolor="white" Font-Names="Nirmala UI" Font-Size="9.75pt" BorderStyle="None" EnableTheming="True" >
                   
               </asp:DropDownList>
                <asp:Button ID="Button2" runat="server" Text="↵" OnClick="Button2_Click" />
               <asp:Button ID="Button1" runat="server" Text="Sobre" />
           </div>
           <div id="aside">
               <div id="header">
                   <asp:Label ID="Label1" runat="server" Text="SISTEMA" Font-Names="Microsoft Sans Serif" Font-Size="20pt" ForeColor="White"></asp:Label>
                   <asp:Label ID="Label2" runat="server" Text="CORPORATIVO" Font-Names="Microsoft Sans Serif" Font-Size="20pt" ForeColor="#E7426B"></asp:Label>
                 <asp:Image ID="Image2" runat="server" />
               </div>
               
               <div id="content">

                   <asp:Panel ID="Panel1" runat="server">
                   </asp:Panel>
                </div>
           </div>
       </form>
        
   
   
</body>
</html>
