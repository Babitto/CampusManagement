<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="mod.aspx.cs" Inherits="QuesGen.mod" %>
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
                       Department
                       </td>
                       <td valign="middle">
                      <div class="form-group">
                         <asp:DropDownList ID="ddldept" AppendDataBoundItems="true" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="ddldept_SelectedIndexChanged"  >
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
                         <asp:DropDownList ID="ddlcourse" AppendDataBoundItems="false" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="ddlcourse_SelectedIndexChanged"  >
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
                         <asp:DropDownList ID="ddlsub" AppendDataBoundItems="false" runat="server" AutoPostBack="true" CssClass="form-control" >
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
                       </div></td>
                      </tr>

                    </table>
                                 


                                      
                          



              <asp:gridview ID="Gridview1" runat="server" ShowFooter="True" AutoGenerateColumns="False" CssClass="Grid" OnRowDataBound="Gridview1_RowDataBound"  >

        <Columns>

            <asp:TemplateField>
            <ItemTemplate>
                <img alt = "" style="cursor: pointer" src="images/plus.png" />
                <asp:Panel ID="pnlOrders" runat="server" Style="display: none">
                    <asp:GridView ID="gvOrders" runat="server" AutoGenerateColumns="false" CssClass = "ChildGrid">
                        <Columns>
                            <asp:BoundField ItemStyle-Width="150px" DataField="OrderId" HeaderText="Order Id" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="OrderDate" HeaderText="Date" />
                        </Columns>
                    </asp:GridView>
                </asp:Panel>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:BoundField DataField="RowNumber" HeaderText="Row" />

        <asp:TemplateField HeaderText="Section">

            <ItemTemplate>

                <asp:DropDownList ID="ddlsection" runat="server"></asp:DropDownList>

            </ItemTemplate>

        </asp:TemplateField>

             <asp:TemplateField HeaderText="Section">

            <ItemTemplate>

                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>

            </ItemTemplate>

        </asp:TemplateField>

        

       

       

        </Columns>

</asp:gridview>
    
                        
                      
                           
                      
                              <asp:Button ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
            <asp:Button ID="Button1" runat="server" CssClass="form-control" Text="Submit" OnClick="Button1_Click"/>   
                              
                              
                                        
                    </div>
                          </div>
                        </div>
        </div>
    &nbsp;&nbsp;

</asp:Content>
