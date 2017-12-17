<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModelPage.aspx.cs" Inherits="Comp229_Assign04.ModelPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2> Selected Model's detail</h2>

    <div>
        <table>

            <tr>
                <td>Name:</td>
                <td>
                    <asp:TextBox ID="modelName" runat="server" CssClass="table" Width="200" /></td>
            </tr>

            <tr>
                <td>Faction:</td>
                <td>
                    <asp:TextBox ID="modelFaction" runat="server" CssClass="table" Width="200" /></td>
            </tr>

            <tr>
                <td>Rank:</td>
                <td>
                    <asp:TextBox ID="modelRank" runat="server" CssClass="table" Width="200" /></td>
            </tr>

            <tr>
                <td>Base:</td>
                <td>
                    <asp:TextBox ID="modelBase" runat="server" CssClass="table" Width="200"  /></td>
            </tr>

            <tr>
                <td>Size:</td>
                <td>
                    <asp:TextBox ID="modelSize" runat="server" CssClass="table" Width="200"  /></td>
            </tr>

            <tr>
                <td>Deployment Zone:</td>
                <td>
                    <asp:TextBox ID="modelDeploymentZone" runat="server" CssClass="table" Width="200"/></td>
            </tr>

            <tr>
                <td>Traits:</td>
                <td>
                    <asp:Repeater runat="server" ID="traitsRep">
                        <ItemTemplate>
                            <asp:Label runat="server" Text="<%# Container.DataItem.ToString() %>"></asp:Label>
                            <br />
                        </ItemTemplate>
                    </asp:Repeater>
                </td>
            </tr>
            <tr></tr>
            <tr>
                <td>Types:</td>
                <td>
                    <asp:Repeater runat="server" ID="typeRep">
                        <ItemTemplate>
                            <asp:Label runat="server" Text="<%# Container.DataItem.ToString() %>"></asp:Label>
                            <br />
                        </ItemTemplate>
                    </asp:Repeater>
                </td>
            </tr>
            <tr></tr>
            <tr>
                <td>Defense Chart:</td>
                <td>
                    <asp:Repeater runat="server" ID="defRep">
                        <ItemTemplate>
                            <asp:Label runat="server" Text="<%# Container.DataItem.ToString() %>"></asp:Label>
                            <br />
                        </ItemTemplate>
                    </asp:Repeater>
                </td>
            </tr>
            <tr></tr>
            <tr>
                <td>Mobility:</td>
                <td>
                    <asp:TextBox ID="modelMobility" runat="server" CssClass="table" Width="150px"  /></td>
            </tr>

            <tr>
                <td>Will Power:</td>
                <td>
                    <asp:TextBox ID="modelWillpower" runat="server" CssClass="table" Width="150px"  /></td>
            </tr>

            <tr>
                <td>Resiliance:</td>
                <td>
                    <asp:TextBox ID="modelResiliance" runat="server" CssClass="table" Width="150px" /></td>
            </tr>

            <tr>
                <td>Wounds:</td>
                <td>
                    <asp:TextBox ID="modelWounds" runat="server" CssClass="table" Width="150px" /></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="updateBtn" runat="server" Text="Update" OnClick="updateBtn_Click" />
                </td>
            </tr>
        </table>
        <br />


    </div>

    <%--<asp:DetailsView ID="modelDetail" runat="server" AutoGenerateRows="false" >
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
            <%--<asp:BoundField DataField="traits" HeaderText="Traits" />
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
    </asp:DetailsView>--%>--%>
</asp:Content>
