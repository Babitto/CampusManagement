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
                       Exam
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                         <asp:DropDownList ID="ddlexam" AppendDataBoundItems="true" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="ddlexam_SelectedIndexChanged">
                              <asp:ListItem Value="0">Select</asp:ListItem>                      
                     </asp:DropDownList>   
                       </div>
                      </td>
                      </tr>  
  
                      <tr>
                      <td valign="middle">
                       Scheme
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                         <asp:DropDownList ID="ddlscheme" AppendDataBoundItems="false" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="ddlscheme_SelectedIndexChanged"  >
                              <asp:ListItem Value="0">Select</asp:ListItem>                      
                     </asp:DropDownList>   
                       </div>
                      </td>
                      </tr>

                    
                                 

&nbsp;&nbsp;
                            <%-- <asp:TextBox ID="txtdtrecmm" runat="server" CssClass="datepicker" style="width:325px !important;" />  --%>
                                      
                          

<tr>

              <asp:gridview ID="Gridview1" runat="server" ShowFooter="True" AutoGenerateColumns="False"  CellPadding="3" GridLines="None" Width="1034px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" >

        <Columns>

        <asp:BoundField DataField="RowNumber" HeaderText="Row Number" />

        <asp:TemplateField HeaderText="Section">

            <ItemTemplate>

                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>

            </ItemTemplate>

        </asp:TemplateField>

        <asp:TemplateField HeaderText="No. of Qus (Including Choice)">

            <ItemTemplate>

                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>

            </ItemTemplate>

        </asp:TemplateField>

        <asp:TemplateField HeaderText="Individual Qus Mark">

            <ItemTemplate>

                 <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>

            </ItemTemplate>

            <FooterStyle HorizontalAlign="Right" />

            

        </asp:TemplateField>

        <asp:TemplateField HeaderText="Total Mark">

            <ItemTemplate>

                 <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>

            </ItemTemplate>

            <FooterStyle HorizontalAlign="Right" />

            

        </asp:TemplateField>

        </Columns>

                  <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                  <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                  <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                  <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                  <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                  <SortedAscendingCellStyle BackColor="#F1F1F1" />
                  <SortedAscendingHeaderStyle BackColor="#594B9C" />
                  <SortedDescendingCellStyle BackColor="#CAC9C9" />
                  <SortedDescendingHeaderStyle BackColor="#33276A" />

</asp:gridview>
    </tr>
                          </table>
                              &nbsp;
            <asp:Button ID="Button1"  runat="server" CssClass="btn btn-theme" Text="Submit" OnClick="Button1_Click" Visible="false" />                   
                    </div>
                          </div>
                        </div>
        </div>
    &nbsp;&nbsp;

</asp:Content>
