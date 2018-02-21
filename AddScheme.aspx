<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddScheme.aspx.cs" Inherits="Assistencia_AMS.AddScheme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row mt">
          		<div class="col-lg-12">
          			<div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i>Admin Home</h4>
                          <div>
                      <table class="table" align="left">
                           <tr>
                      <td valign="middle">
                       Add Department
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                    <asp:DropDownList ID="ddlDept" AppendDataBoundItems="true"  runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlDept_SelectedIndexChanged">
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
                    <asp:DropDownList ID="ddlCourse" AppendDataBoundItems="true" runat="server" CssClass="form-control" AutoPostBack="true">
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
                       <asp:TextBox ID="txtScheme" runat="server" CssClass="form-control" />    
                       </div>
                      </td>
                      </tr>
                          <tr>
                              <td></td>
                              <td><asp:Button runat="server" ID="btnSave" CssClass="btn btn-theme" 
                            Width="100px" Text="Save" OnClick="btnSave_Click" /></td></tr>
                          </table>
                              </div>
             </div>
                      </div>
    </div>
</asp:Content>
