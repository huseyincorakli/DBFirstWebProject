<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UrunEkle.aspx.cs" Inherits="FrozenYogurtDBFirstWeb.UrunEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="container"  >
        <h3>URUN EKLE</h3>
        <form runat="server">

            <asp:DropDownList ID="drplUrunEkle" runat="server" Width="50%" Height="30px"></asp:DropDownList>
            <br />
            <br />
            <br />
            <asp:TextBox ID="txtUrunAdi" runat="server" placeholder="Urun Adı" Width="50%" Height="30px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Fiyat" TextMode="MultiLine" Width="50%" Height="30px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="btnUrunEkle" runat="server" Text="Ekle"  CssClass=" btn btn-info"  onClick="UrunEk"/>
        </form>


    </div>
</asp:Content>
