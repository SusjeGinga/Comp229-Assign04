<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign04._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
    </div>
    <div>
        <asp:GridView ID="allModel" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:HyperLinkField DataTextField="name" DataNavigateUrlFields="name"
                    DataNavigateUrlFormatString="ModelPage.aspx?name={0}" HeaderText="Name" />
                <asp:BoundField DataField="faction" HeaderText="Faction" />
                <asp:BoundField DataField="rank" HeaderText="Rank" />
                <asp:BoundField DataField="_base" HeaderText="Base" />
                <asp:BoundField DataField="size" HeaderText="Size" />
                <asp:BoundField DataField="deploymentZone" HeaderText="Deployment Zone" />
            </Columns>
        </asp:GridView>
        <br />
    </div>

    <div id="addition" runat="server">
        <h3>Add new model:</h3>
        <b>*Please fill all the blanks</b>
        <br />

        <div class="row">
            <div class="col-md-5">
                <asp:Literal ID="nameLit" runat="server" Text="Name: "></asp:Literal>
            </div>
            <div class="col-md-7">
                <asp:TextBox ID="nameTxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="nameTxtReq" runat="server" ErrorMessage="Field is required"
                    ControlToValidate="nameTxt" />
            </div>

            <div class="col-md-5">
                <asp:Literal ID="factionLit" runat="server" Text="Faction: "></asp:Literal>
            </div>
            <div class="col-md-7">
                <asp:TextBox ID="factionTxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="factionTxtReq" runat="server" ErrorMessage="Field is required"
                    ControlToValidate="factionTxt" />
            </div>
            
            <div class="col-md-5">
                <asp:Literal ID="rankLit" runat="server" Text="Rank: "></asp:Literal>
            </div>
            <div class="col-md-7">
                <asp:TextBox ID="rankTxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rankTxtReq" runat="server" ErrorMessage="Field is required"
                    ControlToValidate="rankTxt" />
            </div>
            
            <div class="col-md-5">
                <asp:Literal ID="baseLit" runat="server" Text="Base: "></asp:Literal>
            </div>
            <div class="col-md-7">
                <asp:TextBox ID="baseTxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="baseTxtReq" runat="server" ErrorMessage="Field is required"
                    ControlToValidate="baseTxt" />
            </div>
            
            <div class="col-md-5">
                <asp:Literal ID="sizeLit" runat="server" Text="Size: "></asp:Literal>
            </div>
            <div class="col-md-7">
                <asp:TextBox ID="sizeTxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="sizeTxtReq" runat="server" ErrorMessage="Field is required"
                    ControlToValidate="sizeTxt" />
            </div>
            
            <div class="col-md-5">
                <asp:Literal ID="depZoneLit" runat="server" Text="Deployment Zone: "></asp:Literal>
            </div>
            <div class="col-md-7">
                <asp:TextBox ID="depZoneTxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="depZoneTxtReq" runat="server" ErrorMessage="Field is required"
                    ControlToValidate="depZoneTxt" />
            </div>
            
            <div class="col-md-5">
                <asp:Literal ID="actionNameLit" runat="server" Text="Action Name: "></asp:Literal>
            </div>
            <div class="col-md-7">
                <asp:TextBox ID="actionNameTxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="actionNameTxtReq" runat="server" ErrorMessage="Field is required"
                    ControlToValidate="actionNameTxt" />
            </div>
            
            <div class="col-md-5">
                <asp:Literal ID="specNameLit" runat="server" Text="Special Abilities Name: "></asp:Literal>
            </div>
            <div class="col-md-7">
                <asp:TextBox ID="specNameTxt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="specNameTxtReq" runat="server" ErrorMessage="Field is required"
                    ControlToValidate="specNameTxt" />
            </div>

            <div class="col-md-8">
                <asp:Button ID="addBtn" runat="server" CssClass="btn btn-primary" OnClick="AddBtn_Click" Text="Add" />
            </div>
        </div>
    </div>

</asp:Content>
