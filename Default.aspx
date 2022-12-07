<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Concessionaria.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="style.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div class="row">
                    <h1>Concessioanria</h1>
                    <div class="col-8">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="form-control">
                            <asp:ListItem Text="Seleziona il modello:"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-4">
                        <asp:Image ID="Image1" runat="server" />
                        <div class="row">
                            <asp:Label ID="Label1" runat="server" Text="" Font-Underline="true" Font-Bold="true" Font-Size="X-Large"></asp:Label>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <h2>Optional</h2>
                    <div class="col-12">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="3"  CssClass="form-control">
                        <asp:ListItem Text="Fari a Led (+500 euro)" Value="500" ></asp:ListItem>
                        <asp:ListItem Text="Navigatore satellitare (+200 euro)" Value="200"></asp:ListItem>
                        <asp:ListItem Text="Cerchi in lega (+1250 euro)" Value="1250"></asp:ListItem>
                    </asp:CheckBoxList>
                        <hr />
                    </div>
                    <asp:Button ID="Button1" runat="server" Text="Calcola preventivo" OnClick="Button1_Click" />
                <hr />
            </div>
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
