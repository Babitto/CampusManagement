<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="sec_mark.aspx.cs" Inherits="QuesGen.sec_mark" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row mt">
                    <div class="col-lg-12">
          			<div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i>Section Mark Registration</h4>
                      <%--<form class="form-inline" role="form">--%>
                          <div>
                      <table class="table" align="left">
  
                      <tr>
                      <td valign="middle">
                       Scheme
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                         <asp:DropDownList ID="ddlscheme" AppendDataBoundItems="true" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="ddlscheme_SelectedIndexChanged"  >
                              <asp:ListItem Value="0">Select</asp:ListItem>                      
                     </asp:DropDownList>   
                       </div>
                      </td>
                      </tr>

                    
                                 


                            <%-- <asp:TextBox ID="txtdtrecmm" runat="server" CssClass="datepicker" style="width:325px !important;" />  --%>
                                      
                          

<tr>

              <asp:gridview ID="Gridview1" runat="server" ShowFooter="True" AutoGenerateColumns="False"  CellPadding="4" ForeColor="#333333" GridLines="None" >

                  <AlternatingRowStyle BackColor="White" />

        <Columns>

        <asp:BoundField DataField="RowNumber" HeaderText="Row Number" />

        <asp:TemplateField HeaderText="Section">

            <ItemTemplate>

                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>

            </ItemTemplate>

        </asp:TemplateField>

        <asp:TemplateField HeaderText="Max. Mark">

            <ItemTemplate>

                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>

            </ItemTemplate>

        </asp:TemplateField>

        <asp:TemplateField HeaderText="Total Mark">

            <ItemTemplate>

                 <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>

            </ItemTemplate>

            <FooterStyle HorizontalAlign="Right" />

            

        </asp:TemplateField>

        </Columns>

                  <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                  <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                  <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                  <SortedAscendingCellStyle BackColor="#FDF5AC" />
                  <SortedAscendingHeaderStyle BackColor="#4D0000" />
                  <SortedDescendingCellStyle BackColor="#FCF6C0" />
                  <SortedDescendingHeaderStyle BackColor="#820000" />

</asp:gridview>
    </tr>
                          </table>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />                   
                    </div>
                          </div>
                        </div>
        </div>


</asp:Content>
