<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="course_reg.aspx.cs" Inherits="QuesGen.course_reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 543px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     
    <div class="row mt">
                    <div class="col-lg-12">
          			<div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i>New Course Registration</h4>
                      <%--<form class="form-inline" role="form">--%>
                          <div>
                      <table class="table" align="left">
                          <tr>
                      <td valign="middle">
                       Department
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                         <asp:DropDownList ID="ddldept" AppendDataBoundItems="true" runat="server" AutoPostBack="true" CssClass="form-control"  >
                              <asp:ListItem Value="0">Select</asp:ListItem>                      
                     </asp:DropDownList>   
                       </div>
                      </td>
                      </tr>
                      <tr>
                      <td valign="middle">
                       Course Code
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                       <asp:TextBox ID="txtcourse_code" runat="server" CssClass="form-control" />    
                       </div>
                      </td>
                      </tr>

                      <tr>
                      <td valign="middle">
                       Course Name
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                       <asp:TextBox ID="txtcourse_name" runat="server" CssClass="form-control" />    
                       </div>
                                 
                      </tr>
                           <tr>
                      <td valign="middle">
                       No. of Semesters
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                       <asp:TextBox ID="txtsem" runat="server" CssClass="form-control" />    
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
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i>New Course Registration</h4>
                      <%--<form class="form-inline" role="form">--%>
                          <div>
                      <table class="table" align="left">
                          <tr>
                      <td valign="middle">
                       Department
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                         <asp:DropDownList ID="ddldep" AppendDataBoundItems="true" runat="server" AutoPostBack="true" CssClass="form-control"  >
                              <asp:ListItem Value="0">Select</asp:ListItem>                      
                     </asp:DropDownList>   
                       </div>
                      </td>
                             
                       </td>
                      </tr>
                      

                     
                          
 
                     
                      </table>                

                               
   



                            <%-- <asp:TextBox ID="txtdtrecmm" runat="server" CssClass="datepicker" style="width:325px !important;" />  --%>
                                      
                           <asp:Button runat="server" ID="Button1" CssClass="btn btn-theme" 
                            Width="100px" Text="View" OnClick="Button1_Click"  />

                               <td valign="middle">
                                  <asp:GridView ID="gvcourse" runat="server"></asp:GridView>
                    </div>
                          </div>
                        </div>
        </div>


</asp:Content>
