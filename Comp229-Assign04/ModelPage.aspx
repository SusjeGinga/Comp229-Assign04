<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModelPage.aspx.cs" Inherits="Comp229_Assign04.ModelPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:DetailsView ID="modelDetail" runat="server" AutoGenerateRows="false" >
        <Fields>
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="faction" HeaderText="Faction" />
            <asp:BoundField DataField="rank" HeaderText="Rank" />
            <asp:BoundField DataField="_base" HeaderText="Base" />
            <asp:BoundField DataField="size" HeaderText="Size" />
            <asp:BoundField DataField="deploymentZone" HeaderText="Deployment Zone" />

     <%--       <asp:TemplateField SortExpression="traits" HeaderText="Traits">
                <ItemTemplate>
                    <%# Eval("traits").ToString() %>
                </ItemTemplate>
            </asp:TemplateField>--%>
            <asp:BoundField DataField="traits" HeaderText="Traits" />
            <asp:BoundField DataField="types" HeaderText="Types" />
            <asp:BoundField DataField="defenseChart" HeaderText="Defense Chart" />
            <asp:BoundField DataField="mobility" HeaderText="Mobility" />
            <asp:BoundField DataField="willpower" HeaderText="Will Power" />
            <asp:BoundField DataField="resiliance" HeaderText="Resiliance" />
            <asp:BoundField DataField="wounds" HeaderText="Wounds" />
            <asp:ImageField DataImageUrlField="imageUrl" ControlStyle-Width="200" ControlStyle-Height="200" DataAlternateTextField="imageUrl" DataAlternateTextFormatString="imageUrl" HeaderText="Image" />
        </Fields>
    </asp:DetailsView>
    
    <br />
    <h4> Model's Actions </h4>
    <asp:DetailsView ID="actionDetail" runat="server" AutoGenerateRows="false">
        <Fields>
            <asp:BoundField DataField="name" HeaderText="Actions" />
            <asp:BoundField DataField="type" HeaderText="Type" />
            <asp:BoundField DataField="rating" HeaderText="Rating" />
            <asp:BoundField DataField="range" HeaderText="Range" />
            <asp:BoundField DataField="description" HeaderText="Description" />
        </Fields>
    </asp:DetailsView>

    <br />
    <h4> Model's Special Ability </h4>
    <asp:DetailsView ID="specAbiDetail" runat="server" AutoGenerateRows="false">
        <Fields>
            <asp:BoundField DataField="name" HeaderText="Special Abilities" />
            <asp:BoundField DataField="description" HeaderText="Description" />
        </Fields>
    </asp:DetailsView>

</asp:Content>
