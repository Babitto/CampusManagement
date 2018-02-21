<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="add_batch_new.aspx.cs" Inherits="sample_internal.add_batch_new" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 252px;
    }
    .auto-style2 {
        width: 148px;
    }
    .auto-style3 {
        width: 95px;
    }
    .auto-style4 {
        width: 78px;
    }
    .auto-style6 {
        width: 142px;
    }
    .auto-style7 {
        width: 180px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Select Department"></asp:Label>
                </td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">
                    <asp:DropDownList ID="ddl_dept" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddl_dept_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Select Course"></asp:Label>
                </td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">
                    <asp:DropDownList ID="ddl_course" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddl_course_SelectedIndexChanged1">
                    </asp:DropDownList>
                </td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Select Scheme"></asp:Label>
                </td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">
                    <asp:DropDownList ID="ddl_scheme"  runat="server" >
                    </asp:DropDownList>
                </td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Add Batch"></asp:Label>
                </td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">
                    <asp:TextBox ID="txt_batch" runat="server"></asp:TextBox>
                </td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">
                    <asp:GridView ID="GridView_batch" runat="server">
                        <Columns>
                            <asp:CommandField  ShowEditButton="True" ShowHeader="True" />
                        </Columns>
                        <Columns>
                            <asp:CommandField  ShowDeleteButton="True" ShowHeader="True" />
                        </Columns>
                    </asp:GridView>
                </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">
                    <asp:Button ID="btn_add" runat="server" Text="Add" OnClick="btn_add_Click" />
                </td>
        <td class="auto-style3">
                    <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" Height="26px" />
                </td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
</table>
</asp:Content>
