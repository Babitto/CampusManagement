<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="search_staff.aspx.cs" Inherits="QuesGen.search_staff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row mt">
                    <div class="col-lg-12">
          			<div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i>Search Subject</h4>
                      <%--<form class="form-inline" role="form">--%>
                          <div>
                      <table class="table" align="left">

                         <tr>
                      
                       <td valign="middle" colspan="4">
                      <div class="form-group">
                          <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Search"></asp:TextBox>
                       </div>
                      </td>
                             </tr>
                          <tr>
                        <td valign="middle">
                      <div class="form-group">
                          <asp:Button ID="Search1" runat="server" Text="Search" CssClass="form-control" OnClick="Search1_Click"   />
                       </div>
                      </td>
                      </tr>
                            
                          <tr>
                       
                       <td valign="middle" colspan="3">
                      <div class="form-group">
                          &nbsp;&nbsp;
                          <asp:GridView ID="gvsub" runat="server" AutoGenerateEditButton="True" Width="633px" OnRowEditing="gvsub_RowEditing" OnRowUpdating="gvsub_RowUpdating" OnRowCancelingEdit="gvsub_RowCancelingEdit"   DataKeyNames="staff_id" ></asp:GridView>
                      </div>
                          
                      </td>
                      </tr>

                      
 
                     
                      </table>                

                            &nbsp;&nbsp;   
   



                            <%-- <asp:TextBox ID="txtdtrecmm" runat="server" CssClass="datepicker" style="width:325px !important;" />  --%>
                                      
                           
                    </div>
                          </div>
                        </div>
        </div>

</asp:Content>
