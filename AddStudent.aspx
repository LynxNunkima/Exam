<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="MasterApp.View.AddStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
             <div class="header col-md-12" style="text-align:center;">
                <h1><asp:Label Text="REGISTER STUDENTS" runat="server" ForeColor="White"></asp:Label></h1>
             </div>
            <div class="col-lg-3"></div>
            
            <div class="add_table col-lg-6" style="padding-top:3em; padding-left:9%;">
                
                <table style="padding-top:5em;">
                    <tr>
                        <th>
                            <asp:Label Text="Name" runat="server" ForeColor="White"></asp:Label>
                        </th>
                        <td>
                            <asp:TextBox runat="server" CssClass="form-control input-md" ID="txtName" Width="300px"></asp:TextBox> 
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label Text="Age" runat="server" ForeColor="White"></asp:Label>
                        </th>
                        <td>
                            <asp:TextBox runat="server" ID="txtAge" CssClass="form-control input-md" Width="300px"></asp:TextBox> 
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label Text="Roll No" runat="server" ForeColor="White"></asp:Label>
                        </th>
                        <td>
                            <asp:TextBox runat="server" ID="txtRoll" CssClass="form-control input-md" Width="300px"></asp:TextBox> 
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label Text="Course" runat="server" ForeColor="White"></asp:Label>
                        </th>
                        <td>
                            <%--<asp:TextBox runat="server" CssClass="form-control input-md" ID="txtCourse" Width="300px"></asp:TextBox>--%>
                            <asp:DropDownList ID="ddlCourse" runat="server">
                                <asp:ListItem Enabled="true" Text="Select Course" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="BA" Value="1"></asp:ListItem>
                                <asp:ListItem Text="BCA" Value="2"></asp:ListItem>
                                <asp:ListItem Text="BBA" Value="3"></asp:ListItem>
                                <asp:ListItem Text="BHTM" Value="4"></asp:ListItem>
                                <asp:ListItem Text="BCOM" Value="5"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label Text="Address" runat="server" ForeColor="White"></asp:Label>
                        </th>
                        <td>
                            <asp:TextBox runat="server" CssClass="form-control input-md" ID="txtAddress" Width="300px"></asp:TextBox> 
                        </td>
                    </tr>
                    <tr>
                        <th></th>
                        <td>
                            <asp:Label runat="server" ID="lblReport"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th></th>
                        <td></td>
                    </tr>
                    <tr>
                        <th></th>
                        <td>
                            <asp:Button Text="SUBMIT" CssClass="btn-primary" ID="btnRegister" runat="server" OnClick="btnRegister_Click" />
                        </td>
                    </tr>
                </table>
            </div>
            <div class="col-lg-3"></div>
        </div> 
    </div>
</asp:Content>
