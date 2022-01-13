<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="urunler.aspx.cs" Inherits="FrozenYogurtDBFirstWeb.urunler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
     <script type="text/javascript">
         $(function () {
             $('#urunler').addClass('selected');
         });
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div id="body">
        <div class="header">
            <div>
                <h1>URUNLER</h1>
            </div>
        </div>
        <div>

            <asp:Repeater ID="rptKategori" runat="server" OnItemDataBound="rptKategori_ItemDataBound"><%-- bu rpt çalıştığında rptUrun tetiklenmesi için event ekledik...--%>
                <ItemTemplate>
                    <ul>
                        <li>
                            <h1><%#Eval("KategoriAdi") %></h1>
                            <p><%#Eval("KategoriAciklama") %></p>
                        </li>
                        <asp:Repeater ID="rptUrun" runat="server">
                            <ItemTemplate>
                                <li>
                                    <img src="images/kiwi.jpg" alt="">
                                    <h2><%# Eval("UrunAdi") %> - <%#Eval("Fiyat" ) %>₺</h2>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>


                    </ul>
                </ItemTemplate>
            </asp:Repeater>

            <%-- <ul>
                <li>
                    <h1>All Time Classic</h1>

                    <p>This website template has been designed by freewebsitetemplates.com for you, for free.</p>
                </li>
                <li>
                    <img src="images/kiwi.jpg" alt="">
                    <h2>Kiwi</h2>
                </li>
                <li>
                    <img src="images/mango.jpg" alt="">
                    <h2>Mango</h2>
                </li>
                <li>
                    <img src="images/cantaloupe.jpg" alt="">
                    <h2>Cantaloupe</h2>
                </li>
            </ul>--%>
        </div>
    </div>

</asp:Content>
