<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Credencial.aspx.cs" Inherits="Sistema_de_Presença_Web_Corporativo.Credencial" %>

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
            background-color:rgb(62, 42, 104);
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
            <h2>CREDENCIAL</h2>
        </div>
        <div id="div-config">
            <div id="div-details">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_login" DataSourceID="login" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="id_login" HeaderText="id_login" InsertVisible="False" ReadOnly="True" SortExpression="id_login" />
                        <asp:BoundField DataField="id_funcionario" HeaderText="id_funcionario" SortExpression="id_funcionario" />
                        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                        <asp:BoundField DataField="senha" HeaderText="senha" SortExpression="senha" />
                    </Columns>
                    <HeaderStyle BackColor="#A996C6" />
                </asp:GridView>
                <asp:SqlDataSource ID="login" runat="server" ConnectionString="<%$ ConnectionStrings:bdpresencaConnectionString %>" SelectCommand="SELECT * FROM [Login]"></asp:SqlDataSource>
                <asp:Button ID="Button1" runat="server" Text="Novo" />
                <asp:Button ID="Button2" runat="server" Text="Editar" /> 
                <asp:Button ID="Button3" runat="server" Text="Eliminar" /> 
            </div>

        </div>
        
    </form>
</body>
</html>

