<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="admin_mail.aspx.cs" Inherits="QuesGen.admin_mail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row mt">
                    <div class="col-lg-12">
          			<div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i>Mailing</h4>
                      <%--<form class="form-inline" role="form">--%>
                          <div>
                      <table class="table" align="left">
                           <tr>
                      <td valign="middle">
                       Department
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                          <asp:DropDownList ID="ddldept" runat="server" CssClass="form-control"></asp:DropDownList> 
                      </div>
                      </td>
                      </tr>
                          <tr>
                      <td valign="middle">
                       Subject
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                          <asp:TextBox ID="txtsub" runat="server" CssClass="form-control"></asp:TextBox>
                       </div>
                      </td>
                      </tr>
                      <tr>
                      <td valign="middle">
                       Message
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                       <asp:TextBox ID="txtmessage" runat="server" CssClass="form-control" TextMode="MultiLine" />    
                       </div>
                      </td>
                      </tr>

                           
                     
                      </table>                

                               
   



                            <%-- <asp:TextBox ID="txtdtrecmm" runat="server" CssClass="datepicker" style="width:325px !important;" />  --%>
                                      
                           <asp:Button runat="server" ID="btnSave" CssClass="btn btn-theme" 
                            Width="100px" Text="Send" OnClick="btnSave_Click"  />
                              
                    </div>
                          </div>
                        </div>
        </div>


</asp:Content>
