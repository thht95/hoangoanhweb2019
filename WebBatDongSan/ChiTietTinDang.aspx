<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChiTietTinDang.aspx.cs" Inherits="WebBatDongSan.ChiTietTinDang" %>

<!DOCTYPE html>

<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>
    <header>
        <asp:Image ID="imageheader" runat="server" Width="1200px" Height="200px" ImageUrl="Image/header.jpg" />
    </header>
    <div id="main">
        <div>
            <ul id="menu">
                <li><a href="TrangChu.aspx" title="Thong tin Trang chu" target="_blank">TRANG CHU</a></li>
                <li><a href="#" title="Cac tin duoc dang">TIN DANG</a></li>
                <li><a href="TinTuc.aspx" title="News" target="_blank">TIN TUC</a></li>
                <li><a href="DuAn.aspx" title="Cac Du an" target="_blank">DU AN</a></li>
                <li class="right"><a href="#">DANG KY</a></li>
                <li class="right"><a href="#">DANG NHAP</a></li>
            </ul>
        </div>
        <div id="content">
            <form id="form2" runat="server">
                <div id="news">
                    <div>
                        <div class="boxblue">MỤC CHI TIẾT</div>
                        <div class="chitiet">
                            <div class="CTleft">
                                <asp:Image ID="anh" runat="server" Visible="true" />
                            </div>
                            <div class="CTleft">
                                <h3>
                                    <b>
                                        <asp:Label ID="tieude" runat="server" Visible="true"></asp:Label>
                                    </b>
                                </h3>                                
                            </div>
                            <div class="CTleft">
                                <asp:Label ID="ngaydang" runat="server" Visible="true"></asp:Label>
                            </div>
                            <div class="CTleft">
                                <asp:Label ID="dientich" runat="server" Visible="true"></asp:Label>
                            </div>
                            <div class="CTleft">
                                <asp:Label ID="sotang" runat="server" Visible="true"></asp:Label>
                            </div>
                            <div class="CTleft">
                                <asp:Label ID="gia" runat="server" Visible="true"></asp:Label>
                            </div>
                            <div class="CTleft">
                                <asp:Label ID="vitri" runat="server" Visible="true"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <footer>
        <div id="footer2"></div>
        <div id="footerbkg">
            <h3><b>Website Thong Tin Bat Dong San</b></h3>
            <p><b>Tong dai CSKH: 1900 2018</b></p>
            <p>Copyright © 2019 - 2025 Thongtinbds.com.vn.</p>
            <p>Email: thongtinbds@gmail.com | cskhthongtinbds@gmail.com</p>
            <hr />
            <p><b>Tru so chinh</b> : 96 Dinh Cong, Thanh Xuan, Ha Noi.</p>
        </div>
    </footer>
</body>
