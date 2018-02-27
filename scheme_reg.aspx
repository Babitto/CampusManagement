<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="scheme_reg.aspx.cs" Inherits="QuesGen.scheme_reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="row mt">
                    <div class="col-lg-12">
          			<div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i>New Scheme Registration</h4>
                      <%--<form class="form-inline" role="form">--%>
                          <div>
                      <table class="table" align="left">
                      

                      <tr>
                      <td valign="middle">
                       Scheme Name
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                       <asp:TextBox ID="txtscheme_name" runat="server" CssClass="form-control" />    
                       </div>
                                 
                      </tr>
 
                          <tr>
                      <td valign="middle">
                       Department
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                          <asp:DropDownList ID="ddldept" runat="server"></asp:DropDownList>
                       </div>
                      </td>
                      </tr>

                          <tr>
                      <td valign="middle">
                       Section
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                       <asp:TextBox ID="txtsec" runat="server" CssClass="form-control" />    
                       </div>
                                 
                      </tr>
                     
                      </table>                

                               
   



                            <%-- <asp:TextBox ID="txtdtrecmm" runat="server" CssClass="datepicker" style="width:325px !important;" />  --%>
                                      
                           <asp:Button runat="server" ID="btnSave" CssClass="btn btn-theme" 
                            Width="100px" Text="Save" OnClick="btnSave_Click"  />
                    </div>
                          </div>
                        </div>

    </div>

    <div class="row mt">
                    <div class="col-lg-12">
          			<div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i>View Registered Schemes</h4>
                      <%--<form class="form-inline" role="form">--%>
                          <div>
                      <table class="table" align="left">
                      <tr>
                      <td valign="middle">
                       
                          <asp:Button ID="Button2" runat="server" CssClass="btn btn-theme" 
                            Width="120px" Text="View Schemes" OnClick="Button2_Click" />
                       </td>
                          </tr>
                          <tr>
                       
                       <td valign="middle">
                      <div class="form-group">
                          <asp:GridView ID="gvscheme" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="258px">
                              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                              <EditRowStyle BackColor="#999999" />
                              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                              <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                              <SortedAscendingCellStyle BackColor="#E9E7E2" />
                              <SortedAscendingHeaderStyle BackColor="#506C8C" />
                              <SortedDescendingCellStyle BackColor="#FFFDF8" />
                              <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                          </asp:GridView>
                       </div>
                      </td>
                      </tr>

                      
 
                     
                      </table>                

                               
   



                            <%-- <asp:TextBox ID="txtdtrecmm" runat="server" CssClass="datepicker" style="width:325px !important;" />  --%>
                                      
                           
                    </div>
                          </div>
                        </div>
        </div>
</asp:Content>
