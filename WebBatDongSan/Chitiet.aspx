<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chitiet.aspx.cs" Inherits="WebBatDongSan.Chitiet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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
                <li><a href="#" title="Thong tin Trang chu">TRANG CHỦ</a></li>
                <li><a href="TinDang.aspx" title="Cac tin duoc dang" target="_blank">TIN ĐĂNG</a></li>
                <li><a href="TinTuc.aspx" title="News" target="_blank">TIN TỨC</a></li>
                <li><a href="DuAn.aspx" title="Cac Du an" target="_blank">DỰ ÁN</a></li>
                <li class="right"><a href="#">ĐĂNG KÝ</a></li>
                <li class="right"><a href="#">ĐĂNG NHẬP</a></li>
            </ul>
        </div>
        <div id="content">
            <form id="form1" runat="server">
                <div id="news">
                    <div>
                        <div class="boxblue">MỤC CHI TIẾT</div>
                        <div class="chitiet">

                            <div class="CTleft">
                                <asp:Image ID="ImageNewsTT" runat="server" Height="150px" Width="250px" ImageUrl="Image/canho.jpg" />
                            </div>

                            <div class="CTleft">
                                <h3><b>
                                    <asp:Label ID="lbNameTT" runat="server" Text="Royal City"></asp:Label></b></h3>
                                <br />
                                <p>
                                    Không khí trong lành mát mẻ, tránh xa cuộc sống nhộn nhịp chốn đô thị.<br />
                                    Để đảm bảo chất lượng sống của bạn và gia đình tốt hơn hãy chọn chúng tôi!
                                </p>
                                <asp:Label ID="lbAddressTT" runat="server" Text="30 Nguyen Trai, Ha Noi"></asp:Label><br />
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
</html>

