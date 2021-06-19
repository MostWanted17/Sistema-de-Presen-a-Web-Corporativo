<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Categorias.aspx.cs" Inherits="Sistema_de_Presença_Web_Corporativo.WebForm1" %>

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
        
        #GridView1{
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
        #div-config h2, #GridView1{
            font-family:'Nirmala UI';
            font-size:18pt;
            color:rgb(62, 42, 104);
            font-weight:normal;
            
        }
        #GridView1{
            color:white;
        }
         #Label2,#Label1,#Label3{
             margin-right:150px;
             color:white;
         }
         #Label1{
             margin-right:170px;
         }
        #Label3 {
            margin-right:175px;
        }
        #Button1,#Button2,#Button3{
            width:300px;
            font-family:'Nirmala UI';
            font-size:18pt;
            background-color:rgb(169,150,198);
            padding: 5px 20px;
            margin-top:10px;
            color:white;
            font-weight:bold;
            border:none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div id="header">
            <h2>CATEGORIAS</h2>
        </div>
        <div id="div-config">
            <div id="div-details">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_categoria" DataSourceID="categoria">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="id_categoria" HeaderText="id_categoria" InsertVisible="False" ReadOnly="True" SortExpression="id_categoria" />
                        <asp:BoundField DataField="nome_categoria" HeaderText="nome_categoria" SortExpression="nome_categoria" />
                    </Columns>
                    <HeaderStyle BackColor="#A996C6" />
                </asp:GridView>
                <asp:SqlDataSource ID="categoria" runat="server" ConnectionString="<%$ ConnectionStrings:bdpresencaConnectionString %>" SelectCommand="SELECT [id_categoria], [nome_categoria] FROM [Categorias]"></asp:SqlDataSource>
                <asp:Button ID="Button1" runat="server" Text="Nova Categoria" />
                <asp:Button ID="Button2" runat="server" Text="Editar Categoria" /> 
                <asp:Button ID="Button3" runat="server" Text="Eliminar Categoria" /> 
            </div>

        </div>
        
    </form>
</body>
</html>

