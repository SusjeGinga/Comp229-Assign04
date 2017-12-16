<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign04._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

         <asp:GridView ID="allModel" runat="server" AutoGenerateColumns="false">
            <Columns>
                 <asp:HyperLinkField DataTextField="modelsName" 
                    DataNavigateUrlFormatString="Model.aspx?Name={0}"  HeaderText="Name" />     
                <asp:BoundField DataField="faction" HeaderText="Faction" />
                <asp:BoundField DataField="rank" HeaderText="Rank" />
                <asp:BoundField DataField="_base" HeaderText="Base" />
                <asp:BoundField DataField="size" HeaderText="Size" />
                <asp:BoundField DataField="deploymentZone" HeaderText="Deployment Zone" />
                             
           </Columns>
            
        </asp:GridView>

</asp:Content>
