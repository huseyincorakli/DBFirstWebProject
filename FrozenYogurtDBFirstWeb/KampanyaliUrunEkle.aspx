<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KampanyaliUrunEkle.aspx.cs" Inherits="FrozenYogurtDBFirstWeb.KampanyaliUrunEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
       <div class="container">
        <form runat="server">
            <h3>KAMPANYA ÜRÜN EKLE</h3>
            <asp:TextBox ID="txtBaslikAdi" runat="server" placeholder="Başlık Adı" Width="50%" Height="40px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Başlık İçerik Adı" Width="50%" Height="40px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Başlık   Fiyat" Width="50%" Height="40px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Başlık Açıklaması" TextMode="MultiLine" Width="50%" Height="100px"></asp:TextBox>
            <br />
            <br />
            <br />

            <asp:Button ID="btnGuncelle" runat="server" Text="Güncelle" CssClass=" btn btn-info" OnClick="btnGuncelle_Click" />
        </form>


    </div>
</asp:Content>
