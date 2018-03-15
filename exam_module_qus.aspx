<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="exam_module_qus.aspx.cs" Inherits="QuesGen.exam_module_qus" %>
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

                          <tr>
                      <td valign="middle">
                       Exam
                       </td>
                       <td valign="middle">
                          <div class="form-group">
                         <asp:DropDownList ID="ddlexam" AppendDataBoundItems="false" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="ddlexam_SelectedIndexChanged" >
                              <asp:ListItem Value="0">Select</asp:ListItem>                      
                     </asp:DropDownList>   
                       </div></td>
                      </tr>

                    </table>
                                 


                                      
                          



              <asp:gridview ID="Gridview1" runat="server" ShowFooter="True" AutoGenerateColumns="False" CellPadding="3" GridLines="Vertical" Width="585px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" OnRowDataBound="Gridview1_RowDataBound" Height="216px" >

                  <AlternatingRowStyle BackColor="#DCDCDC" />

        <Columns>

        <asp:BoundField DataField="Question" HeaderText="Question No. " />

        
                <%--<asp:BoundField DataField="Question" HeaderText="Question " />--%>
                <%--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> --%>
                <%--<asp:DropDownList ID="DropDownList1" runat="server"  
                                          AppendDataBoundItems="false">  
                    <asp:ListItem Value="-1">Select</asp:ListItem>  
                </asp:DropDownList> --%>
            

        <asp:TemplateField HeaderText="Module">

            <ItemTemplate>

                 <asp:DropDownList ID="DropDownList2" runat="server"  
                                          AppendDataBoundItems="false">  
                    <asp:ListItem Value="-1">Select</asp:ListItem>  
                </asp:DropDownList> 

            </ItemTemplate>

        </asp:TemplateField>

        <asp:TemplateField HeaderText="Complexity">

            <ItemTemplate>

                  <asp:DropDownList ID="DropDownList3" runat="server"  
                                          AppendDataBoundItems="false">  
                    <asp:ListItem Value="-1">Select</asp:ListItem>  
                      <asp:ListItem Value="-1">Easy</asp:ListItem>  
                      <asp:ListItem Value="-1">Medium</asp:ListItem>  
                      <asp:ListItem Value="-1">Hard</asp:ListItem>  
                </asp:DropDownList> 

            </ItemTemplate>

            <FooterStyle HorizontalAlign="Right" />

            

        </asp:TemplateField>

       

        </Columns>

                  <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                  <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                  <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                  <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                  <SortedAscendingCellStyle BackColor="#F1F1F1" />
                  <SortedAscendingHeaderStyle BackColor="#0000A9" />
                  <SortedDescendingCellStyle BackColor="#CAC9C9" />
                  <SortedDescendingHeaderStyle BackColor="#000065" />

</asp:gridview>
    
                        
                      
                           
                      
                              
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-theme" Text="Submit"/>   
                              
                              
                                        
                    </div>
                          </div>
                        </div>
        </div>
    &nbsp;&nbsp;


</asp:Content>
