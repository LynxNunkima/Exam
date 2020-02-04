<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MasterApp.View.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-image: url('wall2.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header" style="text-align:center;">
                <h1><asp:Label Text="REGISTER PAGE" runat="server"></asp:Label></h1>
            </div>
            <div class="register_table" style="padding-top:5em; padding-left:40%;">
                <table runat="server">
                    <tr>
                        <th>
                            <asp:Label Text="Username" runat="server"></asp:Label>
                        </th>
                        <td>
                            <asp:TextBox CssClass="form-control input-lg" ID="txtUsername" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label Text="Email" runat="server"></asp:Label>
                        </th>
                        <td>
                            <asp:TextBox CssClass="form-control input-lg" ID="txtEmail" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label Text="Password" runat="server"></asp:Label>
                        </th>
                        <td>
                            <asp:TextBox CssClass="form-control input-md" ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr><th></th></tr>
                    <tr><th></th>
                        <td>
                            <asp:Label ID="lblReport" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            
                        </th>
                        <td>
                            <asp:Button Text="REGISTER" ID="btnREGISTER" CssClass="btn-primary" OnClick="btnREGISTER_Click" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <th>
                            
                        </th>
                        <td>
                            <asp:Label Text="Already Registered? Click below to login.." runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            
                        </th>
                        <td>
                            <asp:Button Text="LOGIN" ID="btnLOGIN" CssClass="btn-danger" OnClick="btnLOGIN_Click" runat="server" />
                        </td>
                    </tr>

                </table>
            </div>
        </div>
    </form>
</body>
</html>
