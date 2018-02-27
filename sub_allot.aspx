<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="sub_allot.aspx.cs" Inherits="QuesGen.sub_allot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row mt">
          		<div class="col-lg-12">
          			<div class="form-panel">
                  	  <h4 class="mb">Subject - Staff Allotment</h4>
                          <div>
                      <table class="table" align="left">
                          <tr>
                      <td valign="middle">
                       Department
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                    <asp:DropDownList ID="ddldept" AppendDataBoundItems="true" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddldept_SelectedIndexChanged"    >
                              <asp:ListItem Value="0">Select</asp:ListItem>
                     </asp:DropDownList>                             
                          </div>
                      </td>
                          </tr>
                           <tr>
                      <td valign="middle">
                       Course
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                    <asp:DropDownList ID="ddlcourse" AppendDataBoundItems="false" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlcourse_SelectedIndexChanged"   >
                              <asp:ListItem Value="0">Select</asp:ListItem>
                     </asp:DropDownList>                             
                          </div>
                      </td>
                          </tr>                    
                           <tr>
                      <td valign="middle">
                       Subject
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                    <asp:DropDownList ID="ddlsub" AppendDataBoundItems="false" runat="server" CssClass="form-control" AutoPostBack="true" >
                              <asp:ListItem Value="0">Select</asp:ListItem>
                     </asp:DropDownList>                             
                          </div>
                      </td>
                          </tr>
                             <tr>
                      <td valign="middle">
                       Semester
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                    <asp:DropDownList ID="ddlsem" AppendDataBoundItems="true" runat="server" CssClass="form-control" AutoPostBack="true"   >
                              <asp:ListItem Value="0">Select</asp:ListItem>
                        <asp:ListItem Value="1">1</asp:ListItem>
                     </asp:DropDownList>                             
                          </div>
                      </td>
                          </tr>
                          
                          
                                    <tr>
                      <td valign="middle">
                       Batch
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                    <asp:DropDownList ID="ddlbatch" AppendDataBoundItems="false" runat="server" CssClass="form-control" AutoPostBack="true"  >
                              <asp:ListItem Value="0">Select</asp:ListItem>
                     </asp:DropDownList>                             
                          </div>
                      </td>
                          </tr>
                          <tr>
                                <td valign="middle">
                       Staff Name
                       </td>
                         <td valign="middle">
                      <div class="form-group">
                    <asp:DropDownList ID="ddlstaff" AppendDataBoundItems="false" runat="server" CssClass="form-control" AutoPostBack="true">
                              <asp:ListItem Value="0">Select</asp:ListItem>
                     </asp:DropDownList>                            
                          </div>
                             </td></tr>
                          </table>

                              <asp:Button runat="server" ID="btnSave" CssClass="btn btn-theme" 
                            Width="100px" Text="Save"   />
                              </div></div></div></div>

</asp:Content>
