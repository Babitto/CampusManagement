<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="add_dept_new.aspx.cs" Inherits="sample_internal.add_dept_new" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 52px;
        }
        .auto-style4 {
            width: 260px;
        }
        .auto-style5 {
            height: 52px;
            width: 260px;
        }
        .auto-style6 {
            height: 22px;
        }
        .auto-style7 {
            width: 260px;
            height: 22px;
        }
        .auto-style8 {
            width: 123px;
        }
        .auto-style9 {
            height: 52px;
            width: 123px;
        }
        .auto-style10 {
            height: 22px;
            width: 123px;
        }
        .auto-style11 {
            height: 29px;
        }
        .auto-style12 {
            width: 260px;
            height: 29px;
        }
        .auto-style13 {
            width: 123px;
            height: 29px;
        }
        .auto-style14 {
            width: 277px;
        }
        .auto-style15 {
            height: 29px;
            width: 277px;
        }
        .auto-style16 {
            height: 52px;
            width: 277px;
        }
        .auto-style17 {
            height: 22px;
            width: 277px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            <td class="auto-style12"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            <td class="auto-style15"></td>
            <td class="auto-style13"></td>
            <td class="auto-style11" colspan="2"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style5"></td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style9">
                    <asp:Label ID="Label4" runat="server" Text="New Department"></asp:Label>
                </td>
            <td class="auto-style2" colspan="2">
                    <asp:TextBox ID="txtdept" runat="server" Width="93px" OnTextChanged="txtdept_TextChanged"></asp:TextBox>
                </td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style7"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6">
                    &nbsp;</td>
            <td class="auto-style17">
                    &nbsp;</td>
            <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" Text="Add Department" OnClick="Button1_Click" Width="107px" />
                </td>
            <td class="auto-style6">
                    <asp:Button ID="btn_clear" runat="server" Text="Clear" Width="96px" OnClick="Button2_Click" />
                </td>
            <td class="auto-style6">
                <asp:Button ID="btn_view" runat="server" Text="View Departments" />
            </td>
            <td class="auto-style6">
                </td>
            <td class="auto-style6">
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                    &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                    &nbsp;</td>
            <td class="auto-style14">
                    &nbsp;</td>
            <td class="auto-style8">
                    &nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>
                    &nbsp;</td>
            <td>
                    &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:GridView ID="GridView3" runat="server">
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
