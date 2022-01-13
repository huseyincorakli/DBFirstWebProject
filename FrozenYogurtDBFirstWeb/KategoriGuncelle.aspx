<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriGuncelle.aspx.cs" Inherits="FrozenYogurtDBFirstWeb.KategoriGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
     <div class="container"  >
        <form runat="server">
            <h3> KATEGORİ GÜNCELLE</h3>
            <asp:TextBox ID="txtKategoriAdi" runat="server" placeholder="Kategori Adı" Width="50%" Height="30px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Kategori Açıklama" TextMode="MultiLine" Width="50%" Height="90px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="btnGuncelle" runat="server" Text="Güncelle" CssClass=" btn btn-info" OnClick="btnGuncelle_Click"/>
        </form>


    </div>

</asp:Content>
