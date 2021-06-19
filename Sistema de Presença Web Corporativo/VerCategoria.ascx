<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="VerCategoria.ascx.cs" Inherits="Sistema_de_Presença_Web_Corporativo.VerCategoria" %>
<div id="verCategoria">
    <asp:Label ID="Label1" runat="server" Text="Dia"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server">
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
    <asp:ListItem>13</asp:ListItem>
    <asp:ListItem>14</asp:ListItem>
    <asp:ListItem>15</asp:ListItem>
    <asp:ListItem>16</asp:ListItem>
    <asp:ListItem>17</asp:ListItem>
    <asp:ListItem>18</asp:ListItem>
    <asp:ListItem>19</asp:ListItem>
    <asp:ListItem>20</asp:ListItem>
    <asp:ListItem>21</asp:ListItem>
    <asp:ListItem>22</asp:ListItem>
    <asp:ListItem>23</asp:ListItem>
    <asp:ListItem>24</asp:ListItem>
    <asp:ListItem>25</asp:ListItem>
    <asp:ListItem>26</asp:ListItem>
    <asp:ListItem>27</asp:ListItem>
    <asp:ListItem>28</asp:ListItem>
    <asp:ListItem>29</asp:ListItem>
    <asp:ListItem>30</asp:ListItem>
    <asp:ListItem>31</asp:ListItem>
</asp:DropDownList>
    <asp:Label ID="Label2" runat="server" Text="Mês"></asp:Label>
<asp:DropDownList ID="DropDownList2" runat="server">
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
    <asp:Label ID="Label3" runat="server" Text="Ano"></asp:Label>
<asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>
<asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Exportar PDF" />
</div>
<div id="grid">
    <asp:Panel ID="Panel2" runat="server"></asp:Panel>
</div>

