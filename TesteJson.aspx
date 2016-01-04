<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TesteJson.aspx.cs" Inherits="TestClientJson.TesteJson" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="PnlUrl" runat="server" Style="width: 100%">
                <asp:RadioButtonList ID="rdMetodoEnvio" runat="server" OnSelectedIndexChanged="rdMetodoEnvio_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem Text="Get" Value="Get" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="Post" Value="Post"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:Label ID="lblUrl" runat="server" Text="URL:"></asp:Label>
                <asp:TextBox ID="txtUrl" runat="server" Width="450px"></asp:TextBox>
                <hr />
            </asp:Panel>
            <asp:Panel ID="PnlPost" runat="server">
                <asp:Label ID="lbParametrosPost" runat="server" Text="Parametros POST:"></asp:Label>
                <br />
                <asp:TextBox ID="txtParametrosPost" runat="server" TextMode="MultiLine" Rows="10" Columns="100">

                </asp:TextBox>
                <hr />
            </asp:Panel>
            <asp:Panel ID="PnlBotao" runat="server" Style="width: 100%">
                <asp:Button ID="btnExecutar" runat="server" Text="Consultar" OnClick="btnExecutar_Click" />
                <hr />
            </asp:Panel>

            <asp:Panel ID="PnlRetorno" runat="server" Style="width: 100%">
                <asp:Label ID="lbRetorno" runat="server" Text="Retorno:"></asp:Label><br />
                <asp:TextBox ID="txtRetorno" runat="server" TextMode="MultiLine" Rows="10" Columns="100"></asp:TextBox>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
