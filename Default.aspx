<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Concessionaria.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="style.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        img {
            width: 400px;
            object-fit: cover;
        }
        td {
            padding-right: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <h1>Fake BMW Group</h1>
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
                <h3>Optional</h3>
                <div class="col-12">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="4" CssClass="form-control" RepeatDirection="Horizontal">
                        <asp:ListItem Text="Versione Base (+0 euro)" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Pacchetto Sportivo M (+7500 euro)" Value="7500"></asp:ListItem>
                        <asp:ListItem Text="Vernice Metalizzata (+3100 euro)" Value="3100"></asp:ListItem>
                        <asp:ListItem Text="Fari a Led (+500 euro)" Value="500"></asp:ListItem>
                        <asp:ListItem Text="Rivestimento Interni in Pelle (+900 euro)" Value="900"></asp:ListItem>
                        <asp:ListItem Text="Cerchi in lega (+1250 euro)" Value="1250"></asp:ListItem>
                        <asp:ListItem Text="Pacchetto Comfort (+2100 euro)" Value="2100"></asp:ListItem>
                        <asp:ListItem Text="Pacchetto Innovation (+2250 euro)" Value="2250"></asp:ListItem>
                    </asp:CheckBoxList>
                    <hr />
                </div>
            </div>
            <div class="row">
                <div class="col-4">
                <h3>Garanzia</h3>
                <p>Numero anni di garanzia (500 euro cad):</p>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Nessuna garanzia" Value="0"></asp:ListItem>
                        <asp:ListItem Text="1 Anno di garanzia" Value="500"></asp:ListItem>
                        <asp:ListItem Text="2 Anno di garanzia" Value="1000"></asp:ListItem>
                        <asp:ListItem Text="3 Anno di garanzia" Value="1500"></asp:ListItem>
                    </asp:DropDownList>
                    <hr />
                </div>
                <div class="col-8 alert alert-info">
                    Prezzo di listino:
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label><br />
                    Il totale degli optional:
                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label><br />
                    Il tolate della garanzia:
                    <asp:Label ID="Label4" runat="server" Text=""></asp:Label><br />
                    <strong>Totale complessivo:
                    <asp:Label ID="Label5" runat="server" Text=""></asp:Label></strong>
                </div>
            </div>
            <div class="row">
                <div class="col4">
                    <asp:Button ID="Button1" runat="server" Text="Calcola preventivo" OnClick="Button1_Click" CssClass="btn btn-primary" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
