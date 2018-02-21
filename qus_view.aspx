<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true" CodeBehind="qus_view.aspx.cs" Inherits="QusMaster.qus_view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 937px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row mt">
                    <div class="col-lg-12">
          			<div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i>View Question Bank</h4>
                      <%--<form class="form-inline" role="form">--%>
                          <div>
                      <table class="table" align="left">

                          <tr>
                      <td valign="middle" class="auto-style1">
                       <div class="form-group">
                         <asp:DropDownList ID="ddlsub" AppendDataBoundItems="true" runat="server" AutoPostBack="true" CssClass="form-control" >
                              <asp:ListItem Value="0">Select</asp:ListItem>                      
                     </asp:DropDownList>   
                       </div>   
                       </td>
                       <td valign="middle">
                      <asp:Button ID="Button1" runat="server" CssClass="btn btn-theme" 
                            Width="100px" Text="View" OnClick="Button1_Click" />
                      </td>
                      </tr>
                              <tr>
                      <td valign="middle" class="auto-style1">
                          <asp:GridView ID="gvqus" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" CellPadding="4" DataKeyNames="qus_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="396px">
                              <AlternatingRowStyle BackColor="White" />
                              <Columns>
                                  <asp:BoundField DataField="qus_id" HeaderText="qus_id" InsertVisible="False" ReadOnly="True" SortExpression="qus_id" />
                                  <asp:BoundField DataField="sub_name" HeaderText="sub_name" SortExpression="sub_name" />
                                  <asp:BoundField DataField="scheme_name" HeaderText="scheme_name" SortExpression="scheme_name" />
                                  <asp:BoundField DataField="module_name" HeaderText="module_name" SortExpression="module_name" />
                                  <asp:BoundField DataField="question" HeaderText="question" SortExpression="question" />
                                  <asp:BoundField DataField="mark" HeaderText="mark" SortExpression="mark" />
                                  <asp:BoundField DataField="complexity" HeaderText="complexity" SortExpression="complexity" />
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
                          </asp:GridView>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:qusConnectionString3 %>" SelectCommand="SELECT * FROM [tbl_qus]"></asp:SqlDataSource>
                      </td>
                       
                      </tr>

 
                     
                      </table>                

                               
   



                            <%-- <asp:TextBox ID="txtdtrecmm" runat="server" CssClass="datepicker" style="width:325px !important;" />  --%>
                                      
                         
                    </div>
                          </div>
                        </div>
        </div>

    

</asp:Content>
