<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaFuncionario.aspx.cs" Inherits="Sistema_de_Presença_Web_Corporativo.ListaFuncionario" %>

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
            width:75%;
            height:100%;
            float:left;
            align-items:center;
            align-content:center;
            display: flex;
            flex-direction:column;
        }
        #div-credencial{
            width:20%;
            height:100%;
            float:left;
            margin-left:-1px;
            display:flex;
            flex-direction:column;
        }
        #div-config h2, #GridView1{
            font-family:'Nirmala UI';
            font-size:18pt;
           color:rgb(62, 42, 104);
            font-weight:normal;
            
        }
        #GridView1{
            color:black;
             font-size:14pt;
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
        #Button1,#Button2,#Button3,#Button4,#Button5,#Button6{
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
        #Button1{
            margin-bottom:30px;
        }
        #Button5{
            margin-top:30px;
            margin-bottom:30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div id="header">
            <h2>LISTA DE FUNCIONÁRIOS</h2>
        </div>
        <div id="div-config">
            <div id="div-details">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_funcionario" DataSourceID="ListaFunc">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="id_funcionario" HeaderText="id_funcionario" InsertVisible="False" ReadOnly="True" SortExpression="id_funcionario" />
                        <asp:BoundField DataField="nome" HeaderText="nome" ReadOnly="True" SortExpression="nome" />
                        <asp:BoundField DataField="endereco" HeaderText="endereco" SortExpression="endereco" />
                        <asp:BoundField DataField="Sexo" HeaderText="Sexo" ReadOnly="True" SortExpression="Sexo" />
                        <asp:BoundField DataField="total_salario" HeaderText="total_salario" SortExpression="total_salario" />
                        <asp:BoundField DataField="telefone" HeaderText="telefone" SortExpression="telefone" />
                        <asp:BoundField DataField="nome_categoria" HeaderText="nome_categoria" SortExpression="nome_categoria" />
                    </Columns>
                    <HeaderStyle BackColor="#A996C6" ForeColor="White"/>
                </asp:GridView>
               
                <asp:SqlDataSource ID="ListaFunc" runat="server" ConnectionString="<%$ ConnectionStrings:bdpresencaConnectionString %>" SelectCommand="Select f.id_funcionario,CONCAT(f.nome, ' ', f.apelido) as nome,f.endereco,IIF(f.sexo = '1', 'Masculino', 'Femenino') AS Sexo ,f.total_salario,f.telefone,c.nome_categoria from Funcionarios f, Categorias c where f.id_categoria=c.id_categoria;"></asp:SqlDataSource>
               
            </div>
             <div id="div-credencial">
                <asp:Button ID="Button1" runat="server" Text="Categorias" />
                <asp:Button ID="Button2" runat="server" Text="Novo Funcionário" /> 
                <asp:Button ID="Button3" runat="server" Text="Deletar Funcionário" /> 
                 <asp:Button ID="Button4" runat="server" Text="Editar Funcionário" /> 
                 <asp:Button ID="Button5" runat="server" Text="Exportar PDF" /> 
                 <asp:Button ID="Button6" runat="server" Text="Salário do Mês" /> 
            </div>
        </div>
        
    </form>
</body>
</html>
