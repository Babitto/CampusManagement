<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="report_staff.aspx.cs" Inherits="QuesGen.report_staff" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row mt">
          		<div class="col-lg-12">
          			<div class="form-panel">
                  	  
                          <table class="nav-justified">
                              <tr>
                                  <td>
                                      <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1093px">
                                          <LocalReport ReportPath="report_staff.rdlc">
                                              <DataSources>
                                                  <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                                              </DataSources>
                                          </LocalReport>
                                      </rsweb:ReportViewer>


                                      <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="QuesGen.dataset_staffTableAdapters.tbl_staffTableAdapter"></asp:ObjectDataSource>


                                  </td>
                                  <td>&nbsp;</td>
                              </tr>
                              <tr>
                                  <td>
                                      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                  </td>
                                  <td>&nbsp;</td>
                              </tr>
                          </table>
                  	  
                          </div>
                      </div>
         </div>

</asp:Content>
