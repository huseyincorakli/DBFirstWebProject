<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UrunGuncelle.aspx.cs" Inherits="FrozenYogurtDBFirstWeb.UrunGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
       <div class="container"  >
        <h3>URUN GUNCELLE</h3>
        <form runat="server">

            <asp:DropDownList ID="drplUrunGuncelle" runat="server" Width="50%" Height="30px"></asp:DropDownList>
            <br />
            <br />
            <br />
            <asp:TextBox ID="ugtxtUrunAdi" runat="server" placeholder="Urun Adı" Width="50%" Height="30px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:TextBox ID="ugTextBox1" runat="server" placeholder="Fiyat" TextMode="MultiLine" Width="50%" Height="30px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="btnUrunGuncelle" runat="server" Text="Güncelle"  CssClass=" btn btn-info"  OnClick="UrunGu"/>
        </form>


    </div>
</asp:Content>
