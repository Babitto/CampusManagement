<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddStaff.aspx.cs" Inherits="Assistencia_AMS.AddStaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

 <div class="row mt">
          		<div class="col-lg-12">
          			<div class="form-panel">
                  	  <h4 class="mb">Admin Home</h4>
                          <div>
                      <table class="table" align="left"><tr>
                      <td valign="middle">
                       Select Department
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                    <asp:DropDownList ID="ddlDept" AppendDataBoundItems="true" runat="server" CssClass="form-control" AutoPostBack="true"  >
                              <asp:ListItem Value="0">Select</asp:ListItem>
                     </asp:DropDownList>                             
                          </div>
                      </td>
                          </tr>
                           <tr>
                                <td valign="middle">
                       StaStaff Name
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                       <asp:TextBox ID="txtstaff" runat="server" CssClass="form-control" OnTextChanged="txtstaff_TextChanged" />    

                       </div>
                      </td>
                      </tr>
                            <tr>
                                <td valign="middle">
                       Gender
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                          
                          <asp:RadioButton ID="male" runat="server" GroupName="Gender" Text="MALE" />
                           <asp:RadioButton ID="female" runat="server"  GroupName="Gender" Text="FEMALE" />

                       </div>
                      </td>
                      </tr>
                          
                          <tr>
                                <td valign="middle">
                                    Imaged>
                       <td valign="middle">
                      <div class="form-group">
                          <asp:Image ID="img_fac" runat="server" Height="200px" Width="200px" />
                          <asp:FileUpload ID="upld_photo" runat="server" />

                       </div>
                      </td>
                      </tr>
                          
                                                <tr>
                      <td valign="middle">
                       User Type
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                    <asp:DropDownList ID="ddluser" AppendDataBoundItems="true" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddluser_SelectedIndexChanged"  >
                              <asp:ListItem Value="0">Select</asp:ListItem>
                     </asp:DropDownList>                             
                          </div>
                      </td>
                          </tr>
                                                <tr>
                      <td valign="middle">
                       Faculty Type
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                    <asp:DropDownList ID="ddlfaculty" AppendDataBoundItems="true" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlfaculty_SelectedIndexChanged" >
                              <asp:ListItem Value="0">Select</asp:ListItem>
                     </asp:DropDownList>                             
                          </div>
                      </td>
                          </tr>
                           <tr>
                                <td valign="middle">
                       mail_id
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                       <asp:TextBox ID="txtmail" runat="server" CssClass="form-control" OnTextChanged="txtmail_TextChanged" />    

                       </div>
                      </td>
                      </tr>
                          
                                              <tr>
                                <td valign="middle">
                       User Name
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                       <asp:TextBox ID="txtuname" runat="server" CssClass="form-control" />    

                       </div>
                      </td>
                      </tr>
                            <tr>
                                <td valign="middle">
                       Password
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                       <asp:TextBox ID="txtpass" runat="server" CssClass="form-control" />    

                       </div>
                      </td>
                      </tr>
                           <tr>
                                <td valign="middle">
                        Confirm Password
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                       <asp:TextBox ID="txtconfirm" runat="server" CssClass="form-control" />    

                       </div>
                      </td>
                      </tr>
                          
 <tr>
                              <td></td>
                              <td><asp:Button runat="server" ID="btnSave" CssClass="btn btn-theme" 
                            Width="100px" Text="Save" OnClick="btnSave_Click" />
                                  <asp:Label ID="Label1" runat="server" ></asp:Label>
                              </td>

 </tr>
        </table>
</asp:Content>
