<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UrunListele.aspx.cs" Inherits="FrozenYogurtDBFirstWeb.UrunListele" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="container">
        <h3>Urunler</h3>
        <form runat="server">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Urun Id</th>
                        <th>Kategori Adi</th>
                        <th>Urun Adi</th>
                        <th>Urun Fiyatı</th>
                        <th>Sil</th>
                        <th>Guncelle</th>

                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rptadminUrun" runat="server">

                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:Label ID="urunLabel" runat="server" Text= '<%#Eval("UrunId") %> '></asp:Label>
                                </td>
                                <td><%#Eval("KategoriAdi") %></td>
                                <td><%#Eval("UrunAdi") %></td>
                                <td><%#Eval("Fiyat") %></td>

                                <td>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-danger" OnClick="UrunSil">Sil</asp:LinkButton></td>

                                <td>
                                    <asp:HyperLink ID="uhlGuncelle" runat="server" CssClass="btn btn-warning" NavigateUrl='<%#"UrunGuncelle.aspx?ID="+Eval("UrunId") %>'>Güncelle</asp:HyperLink></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>

                </tbody>
            </table>
            <a href="UrunEkle.aspx" class="btn btn-info">Urun Ekle</a>

        </form>
    </div>
</asp:Content>
