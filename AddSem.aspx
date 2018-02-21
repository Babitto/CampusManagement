<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddSem.aspx.cs" Inherits="Assistencia_AMS.AddSem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="row mt">
          		<div class="col-lg-12">
          			<div class="form-panel">
                  	  
                        <h4 class="mb">Add Semester</h4>
                          
                      <table class="table" align="left">
                           <tr>
                      <td valign="middle">
                       Select Department
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                    <asp:DropDownList ID="ddlDept" AppendDataBoundItems="true" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlDept_SelectedIndexChanged" >
                              <asp:ListItem Value="0">Select</asp:ListItem>
                     </asp:DropDownList>                             
                          </div>
                      </td>
                          </tr>
                      <tr>
                      <td valign="middle">
                       Select Course
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                    <asp:DropDownList ID="ddlCourse" AppendDataBoundItems="true" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlCourse_SelectedIndexChanged">
                              <asp:ListItem Value="0">Select</asp:ListItem>
                     </asp:DropDownList>                             
                          </div>
                      </td>
                          </tr>
                                                <tr>
                      <td valign="middle">
                       Select Scheme
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                    <asp:DropDownList ID="ddlScheme" AppendDataBoundItems="true" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlScheme_SelectedIndexChanged">
                              <asp:ListItem Value="0">Select</asp:ListItem>
                     </asp:DropDownList>                             
                          </div>
                      </td>
                          </tr>
                                                <tr>
                      <td valign="middle">
                       Select Batch
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                    <asp:DropDownList ID="ddlBatch" AppendDataBoundItems="true" runat="server" CssClass="form-control" AutoPostBack="true">
                              <asp:ListItem Value="0">Select</asp:ListItem>
                     </asp:DropDownList>                             
                          </div>
                      </td>
                          </tr>
                          <tr>
                      <td valign="middle">
                       
                       
                          <tr>
                                <td valign="middle">
                       Semester
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                       <asp:TextBox ID="txtSem" runat="server" CssClass="form-control" />    
                       </div>
                      </td>
                      </tr>
                          <tr>
                              <td></td>
                              <td><asp:Button runat="server" ID="btnSave" CssClass="btn btn-theme" 
                            Width="100px" Text="Save" OnClick="btnSave_Click"  /></td></tr>
                           <tr><td><asp:GridView ID="GridAt"  CssClass="table table-bordered table-hover" runat="server" >
                                </asp:GridView></td></tr>
                          </table>
                              </div>
             </div>
                      </div>
   

</asp:Content>
