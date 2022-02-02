<%-- 
    Document   : home
    Created on : Jan 29, 2022, 11:38:50 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Boss Car Care</title>
    <link href="css/bCar.css" rel="stylesheet" type="text/css" />
    <script src="js/bCar.js"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
              <div class="navbar-header">
                <a class="navbar-brand" href="#"><img class="logo" title="Boss Car Care" src="images/logoBossCarCare2.png" alt="logoBossCarCare"></a>
              </div>
              <ul class="nav navbar-nav">
                <li >
                    <a href="#"><p class="dichvu" >Dịch vụ</p></a>
                </li>
                <li>
                    <a href="#" ><p class="banggia">Bảng giá</p></a>
                </li>
                <li >
                    <a  href="#" ><p class="congcu">Công cụ</p></a>
                </li>
                <li>
                    <a  href="#" ><p class="tintuc">Tin tức</p></a>
                </li>


              </ul>
              <ul class="nav navbar-nav navbar-right">
                <li><a href="signup.jsp"><span class="glyphicon glyphicon-user" ></span> <p><%= request.getAttribute("signup") == null ? "Sign up" : request.getAttribute("signup") %>  </p></a></li>
                <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> <p>Login</p></a></li>
              </ul>
                  
            </div>

          </nav>

          <!--edit-->
          <div class="content_menu " id="dichvu_content">
                    <ul >
                        <li class="col-md-4"><a href="#">Rửa xe</a></li>
                        <li class="col-md-4"><a href="#">Bảo Dưỡng</a></li>
                        <li class="col-md-4"><a href="#">Sửa chữa</a></li>
                       <img src="images/carcare7.png" alt="">
                    </ul>
        </div>
        <div class="content_menu banggia_content">
            <ul >
                <li class="col-md-4"><a href="#">Bảng giá rửa xe</a></li>
                <li class="col-md-4"><a href="#">Bảng giá bảo Dưỡng</a></li>
                <li class="col-md-4"><a href="#">Bảng giá sửa chữa</a></li>
               <img src="images/carcare8.png" alt="">
            </ul>
        </div>
        <div class="content_menu congcu_content">
            <ul>
                <li class="col-md-4"><a href="#">Đặt lịch trước</a></li>
                <li class="col-md-4"><a href="#">Trả góp</a></li>
                <li class="col-md-4"><a href="#">So sánh phụ tùng</a></li>
               <img src="images/carcare3.png" alt="">
            </ul>
        </div>
        <div class="content_menu " id="tintuc_content">
            <ul>
                <li class="col-md-4"><a href="#">Chương trình khuyến mãi</a></li>
                <li class="col-md-4"><a href="#">Tin tức</a></li>
                <li class="col-md-4"><a href="#">Cải tiến</a></li>
                <img src="images/carcare6.png" alt="">
            </ul>
        </div>

          <!--Nội dung Slider-->
        <div class="row">
            <div class="col-md-12">
                <!--Bắt đầu slider-->
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="images/slide1.jpg" alt="carcare">
                        </div>

                        <div class="item">
                            <img src="images/slide2.jfif" alt="carcare">
                        </div>

                        <div class="item">
                            <img src="images/silde3.jfif" alt="carcare">
                        </div>

                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>
			</div> 	
		</div> 		
                <!--Kết thúc slider-->

          <div class="container">
              <h2 id="detailing" onclick="detailing()">Detailing</h2>
              <h2 id="process" onclick="process()">Quy trình rửa xe</h2>
              <div id = "detailing-content">
                <img src="images/imgcontent3.png" alt="detailcarcare">
                <ul>
                    <li>Detailing không chỉ là một quá trình làm sạch để làm cho một chiếc xe trông đẹp, mà là một cách tiếp cận có hệ thống để giúp kéo dài tuổi thọ của nó bằng các phương pháp và sản phẩm làm giảm các yếu tố môi trường gây hại như bụi bẩn, ánh nắng mặt trời, mùa đông khắc nghiệt, v.v. [2] Bảo dưỡng hoặc phục hồi xe thích hợp để giữ cho xe trông bên ngoài và bên trong như thể chúng đến từ phòng trưng bày của đại lý ô tô làm tăng giá trị bán lại của chúng. [3] Chi tiết tự động đòi hỏi kiến ​​thức về kỹ thuật và sử dụng các công cụ và sản phẩm thích hợp.</li>
                    <li>Chi tiết thường được chia thành hai loại: ngoại thất và nội thất (hoặc cabin). Có những sản phẩm và dịch vụ tập trung đặc biệt vào hai lĩnh vực này.</li>

                </ul>
              </div>

              <div id = "process-content">
                <img src="images/imgcontent2.jpg" alt="detailcarcare">
                <ul>
                    <li>Rửa xịt bên ngoài</li>
                    <li>Vệ sinh gầm xe</li>
                    <li>Rửa thân xe</li>
                    <li>Lau khô, đánh bóng lốp xe</li>
                    <li>Dọn vệ sinh nội thất</li>
                    <li>Kiểm tra lại tình trạng xe</li>
                </ul>
              </div>
              <div class="thuexe">
                      <h2>Thuê xe đa năng</h2>
                 <div class="row" style="margin-left: 70px;
                 margin-right: 70px;">
                    <div class="col-md-5">
                        <img src="images/inovaden.png" alt="">
                        <h4>Toyota Inova - 750.000/ngày</h4>
                    </div>
                    <div class="col-md-7">
                       <img src="images/inovatrang.png" alt="">
                       <h4>Toyota Inova 2020 - 850.000/ngày</h4>
                   </div>
                 </div>
                <div class="row" style="margin-left: 50px;
                margin-right: 50px;">
                    <div class="col-md-6">
                        <img src="images/lx570thue1.png" alt="">
                        <h4>Lx570 2018 - 950.000/ngày</h4>
                    </div>
                    <div class="col-md-6">
                        <img src="images/lx570thue2.png" alt="">
                        <h4>Lx570 2019 - 950.000/ngày</h4>
                    </div>
                </div>
                <p><strong><span class="glyphicon glyphicon-earphone" style="margin-top: 50px;"></span>
                    Đặt thuê ngay: </strong>09888903540

                </p>
                <div class="call" style="background-color: blue;"><script src="https://uhchat.net/code.php?f=92b878"></script></div>
              </div>
              <div>
                  <h2>
                      Tuyển nhân viên
                  </h2>
                  <li>Độ tuổi: > 17 tuổi</li>
                  <li>Giới tính: Nam</li>
                  <li>Yêu cầu: Chăm chỉ học hỏi, cam kêt thời gian làm việc ít nhất 6 tháng</li>
                  <li>Quyền lợi: Bao ăn,ở, được học hỏi kinh nghiệm về ô tô</li>
              </div>
          </div>

          <div class="row footer">
              <div class="row">
                <img class="col-md-offset-5 col-md-7" src="images/logoBossCarCare2.png" alt="">
              </div>
              <div class="row content1">
                <ul class="col-md-3">
                    <li>GIỚI THIỆU</li>
                    <li><a href="#">Về Boss Car</a></li>
                    <li><a href="#">Về Qúa trình thành lập</a></li>
                    <li><a href="#">Tương Lai Boss Car</a></li>
                </ul>
                <ul class="col-md-3">
                    <li>TIN TỨC NỔI BẬT</li>
                    <li><a href="#">Ưu Đãi</a></li>
                    <li><a href="#">Công Ty</a></li>
                    <li><a href="#">Cộng Đồng</a></li>
                </ul class="col-md-3">
                <ul class="col-md-3">
                    <li>HỖ TRỢ</li>
                    <li><a href="#">Câu Hỏi Thường Gặp</a></li>
                    <li><a href="#">Hệ Thống Phân Phối</a></li>
                    <li><a href="#">Liên Hệ</a></li>
                    <li><a href="#">Đặt Lịch Bảo Dưỡng</a></li>
                </ul>
                <ul class="col-md-3">
                    <li>PHÁP LÝ</li>
                    <li><a href="#">Chính sách quyền riêng tư</a></li>
                    <li><a href="#">Chính sách vận chuyển</a></li>
                    <li><a href="#">Chính sách đổi trả</a></li>
                    <li><a href="#">Miễn trừ trách nhiệm</a></li>
                    <li><a href="#">Điều khoản ký kết thỏa thuận đặt cọc mua Ô tô</a></li>
                    <li><a href="#">Điều kiện sử dụng cookies</a></li>
                </ul>
              </div>
            <div class="content2">
            <ul class="row">
                <li class="col-md-4" ><a href="https://g.page/Boss-Car-Care-Hanoi?share" target="_blank" style="color: black;">
                    <strong> Địa chỉ:</strong>Center Point: No.DM6-13,Trade village Vạn Phúc-Hà Đông-Hà Nội</a></li>
                <li class="col-md-4"><strong>Số đăng ký kinh doanh:</strong> 0108926276 <br>
                    <strong>Đăng ký lần đầu: </strong>Ngày 01 tháng 10 năm 2019 <br>
                    <strong>Đăng ký thay đổi lần thứ 3: </strong>Ngày 17 tháng 03 năm 2020<br>
                    <strong>Nơi cấp: </strong>Sở Kế hoạch và Đầu tư Thành phố Hà Nội
                    </li>
                <li class="col-md-4"><strong>Mail:</strong> hoangnvliu@gmail.com</li>
            </ul>
            </div>
          </div>
		 
    </body>
</html>
