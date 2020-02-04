<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MasterApp.View.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="styles.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="header col-md-12" style="text-align:center;">
                    <h1><asp:Label Text="LOGIN PAGE" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="False" ForeColor="White"></asp:Label></h1>
                </div>
                <div class="col-md-3"></div>
            <div class="login_table col-md-6" style="padding-top:5em; padding-left:5%;">
                <table runat="server" style="text-align:left;">
                    <tr>
                        <th>
                            <asp:Label Text="Email" runat="server" ForeColor="White"></asp:Label>
                        </th>
                        <td>
                            <asp:TextBox CssClass="form-control input-lg" ID="txtEmail" runat="server" BackColor="White" Width="344px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label Text="Password" runat="server" ForeColor="White"></asp:Label>
                        </th>
                        <td>
                            <asp:TextBox CssClass="form-control input-lg" ID="txtPassword" TextMode="Password" runat="server" BackColor="White"></asp:TextBox>
                        </td>
                    </tr>
                    <tr><th></th></tr>
                    <tr><th></th>
                        <td>
                            <asp:Label CssClass="reminder" ID="lblReport2" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            
                        </th>
                        <td>
                            <asp:Button Text="LOGIN" runat="server" CssClass="btn-primary" ID="btnLOGIN" OnClick="btnLOGIN_Click"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            
                        </th>
                        <td style="font-size:12px; font-style:italic;">
                            <asp:Label  Text="New User? Register Below.." runat="server" ForeColor="White"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            
                        </th>
                        <td>
                            <asp:Button Text="REGISTER" ID="btnREGISTER" CssClass="btn-danger" OnClick="btnREGISTER_Click" runat="server" />
                        </td>
                    </tr>

                </table>
            </div>
            <div class="col-md-3"></div>
            </div>
            
        </div>
    </form>
</body>
</html>
