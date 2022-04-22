<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="panel-body">
        <div class="row">
            <div class="col-md-4 col-md-offset-1">
                <div class="form-group">
                    <asp:Label Text="Database Name" runat="server" />
                    <asp:TextBox ID="txtDBName" runat="server" CssClass="form-control input-sm" />
                </div>

            </div>
            <div class="col-md-4 col-md-offset-1">
                <div class="form-group">
                    <asp:Label Text="Application Name" runat="server" />
                    <asp:TextBox ID="txtApplication" runat="server" CssClass="form-control input-sm" />
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 col-md-offset-1">
            <div class="form-group">
                <asp:Label Text="Customer" runat="server" />
                <asp:TextBox ID="txtCustomer" runat="server" CssClass="form-control input-sm" />
            </div>
        </div>

        <div class="col-md-4 col-md-offset-1">
            <div class="form-group">
                <asp:Label Text="Business Service" runat="server" />
                <asp:TextBox ID="txtBizSvc" runat="server" CssClass="form-control input-sm" />
            </div>
        </div>
        <div class="col-md-4 col-md-offset-1">
            <div class="form-group">
                <asp:Label Text="DNS Alias" runat="server" />
                <asp:TextBox runat="server" CssClass="form-control input-sm" placeholder="DNS Alias" ID="txtDNSAlias" />
            </div>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource_usp_DBAcmdrPROP" runat="server" ConnectionString="<%$ ConnectionStrings:EvolveConnectionString %>" SelectCommand="usp_DBAcmdrPROP" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtDBName" Name="DB" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtApplication" Name="App" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtBizSvc" Name="BizSVC" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtCustomer" Name="Dept" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtDNSAlias" Name="DNSAlias" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource_usp_DBAcmdrPROP"></asp:GridView>
    <asp:Button ID="btnUpdateExpProp" runat="server" Text="@Update" OnClick="btnUpdateExpProp_Click" />
</asp:Content>
