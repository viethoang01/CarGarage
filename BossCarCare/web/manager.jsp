<%-- 
    Document   : manager
    Created on : Mar 9, 2022, 3:28:22 PM
    Author     : Administrator
--%>

<%@page import="model.CategoryCar"%>
<%@page import="model.Car"%>
<%@page import="model.BookingBill"%>
<%@page import="model.Bill"%>
<%@page import="java.util.ArrayList"%>
<%@page import="util.HtmlHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bCar.css" rel="stylesheet" type="text/css" />
        <script src="js/bCar.js"></script>
        <link href='https://fonts.googleapis.com/css?family=Be Vietnam Pro' rel='stylesheet'>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
            a{

                padding: 10px;
                font-size: 20px;
            }
            span{

                padding: 10px;
                font-size: 20px;
            }
            form{

                margin: auto;
                text-align: center;
                margin-bottom: 20px;

            }
            .hoadon_type{
                padding: 5px;
            }
            .hoadon_type option{
                padding: 20px;
            }
            table{

                margin: auto;
                margin: 10px;
            }
            th , tr{
                text-align: center;
                padding: 5px;
            }
            .link_page{
                text-align: center;
            }
            .table_addxe tr{
                text-align: left;
                margin-bottom: 20px;

            }

        </style>
    </head>
    <body id="home">
        <nav class="navbar  header_top row" style="padding-left: 0;padding-right: 0;margin-left: 0;margin-right: 0;border-radius: 0">
            <div class="container-fluid" style="padding-left: 0;padding-right: 0;box-sizing: border-box">
                <div class="nav_left col-md-9 row">
                    <div class="navbar-header col-md-5">
                        <a class="navbar-brand" href="home"><img class="logo" title="Boss Car Care" src="images/logoBossCarCare2.png" alt="logoBossCarCare"></a>
                    </div>
                    <div class="col-md-7 row">
                        <div class="col-md-3"><a href="home#dichvu">D???ch v???</a></div>
                        <div class="col-md-3"><a href="home#congcu">C??ng c???</a></div>
                        <div class="col-md-3"><a href="home#banggia">B???ng gi??</a></div>
                        <div class="col-md-3"><a href="home#tintuc">Tin t???c</a></div>
                    </div>
                </div>
                <div class="nav_right col-md-3">


                    <div class="dropdown" style="display: none;${manage}">   <!--for ADMIN-->
                        <button style="background-color: white;color: black;border: none" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"><span class="glyphicon glyphicon-user"> ${email_user}</span>
                        </button>

                        <ul class="dropdown-menu" >                              
                            <li style="padding: 10px 2px;"><a  href="manage">Qu???n l?? h??a ????n</a></li>
                            <li style="padding: 10px 2px;"><a href="manage?typepage=tainguyen">Qu???n l?? t??i nguy??n</a></li>
                            <li style="padding: 10px 2px;"><a href="logout">????ng xu???t</a></li>
                        </ul>

                    </div>
                </div>

            </div>

        </nav>


        <%ArrayList<Bill> listthuexe = (ArrayList<Bill>) request.getAttribute("listthuexe");%>
        <%ArrayList<BookingBill> listdichvu = (ArrayList<BookingBill>) request.getAttribute("listdichvu");%>
        <%ArrayList<Car> listcar = (ArrayList<Car>) request.getAttribute("listcar");%>
        <%ArrayList<CategoryCar> listcat = (ArrayList<CategoryCar>) request.getAttribute("listcat");%>
        <%String typepage = (String) request.getAttribute("typepage");%>
        <%if (typepage.contains("tainguyen")) {%>
        <div class="">
            <form action="manage" method="get">
                <select name="typepage" class="hoadon_type">
                    <option value="addtainguyen" <%=request.getAttribute("typepage_addtainguyen_Selected")%>>Th??m Xe</option>
                    <option value="tainguyen" <%=request.getAttribute("typepage_tainguyen_Selected")%>>C??c d??ng xe hi???n c??</option>
                </select>  
                <button id="btn_thuexe" style="padding: 5px 15px">OK</button>
            </form>  
        </div>  
        <%if (typepage.equals("addtainguyen")) {%>
        <div class="row">
            <div class="col-md-6">
                <form action="manage" method="post">
            <table class="table_addxe">

                <tr>
                    <td>URL m???u xe</td>
                    <td>
                        <input name="img" type="file" value="">
                    </td>
                </tr>
                <tr>
                    <td>Car Name</td>
                    <td>
                        <input name="name" type="text" value="">
                    </td>
                </tr>
                <tr>
                    <td>D??ng xe</td>
                    <td>
                        <input name="info" type="text" value="" >
                    </td>
                </tr>
                <tr>
                    <td>Color</td>
                    <td>
                        <input name="color" type="text" value="" >
                    </td>
                </tr>
                <tr>
                    <td>Gi?? thu??/ng??y</td>
                    <td>
                        <input name="price" type="text" value="" >
                    </td>
                </tr>

                <tr>
                    <td>Category ID</td>
                    <td>
                        <input name="catid" type="text" value="">
                    </td>
                </tr>
                <tr>
                    <td>Hi???n tr???ng</td>
                    <td>
                        <input name="current" type="checkbox" value="">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <button  name="typepage" type="submit" value="${typepage}">X??c nh???n</button>
                    </td>
                </tr>


            </table>

        </form>
            </div>
                    <div class="col-md-6">
                        <table border="1">
                            <thead>
                                <tr>
                                    <th>Category ID</th>
                                    <th>Category Name</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%for (CategoryCar cat : listcat) {%>
                                <tr>
                                    <td><%=cat.getId()%></td>
                                    <td><%=cat.getName()%></td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>

                    </div>
        </div>
        <%}%>
        <%if (typepage.equals("tainguyen")) {%>
        <%

            int pageindex = (int) request.getAttribute("pageindex");
            int totalNumberPage = (int) request.getAttribute("totalNumberPage");
        %>
        <table border="1">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Car ID</th>
                    <th>H??nh m???u</th>
                    <th>T??n xe</th>
                    <th>D??ng xe</th>
                    <th>Hi???n tr???ng</th>
                    <th>M??u s???c</th>
                    <th>Gi?? thu??</th>


                </tr>
            </thead>
            <tbody>
                <%int count = 1;%>
                <%for (Car car : listcar) {%>

                <tr>
                    <td><%=count++%></td>
                    <td><%=car.getId()%></td>
                    <td><img src="<%=car.getImg()%>" width="10%"></td>
                    <td><%=car.getNameCat()%> <%=car.getName()%></td>
                    <td><%=car.getInfo()%></td>
                    <td><%=car.getCurrent() ? "ON" : "OFF"%></td>
                    <td><%=car.getColor()%></td>
                    <td><%=car.getPrice()%></td>

                    <td><a href="edit?type=tainguyen&tainguyenid=<%=car.getId()%>">Edit</a></td>
                    <td><a href="#" onclick="deleteBill3(<%=car.getId()%>)">Delete</a></td>

                </tr>
                <%}%>
            </tbody>
        </table>
        <div class="link_page"><%=HtmlHelper.pager(5, pageindex, totalNumberPage, typepage)%></div>
        <%}%>
        <%} else {%>
        <div class="">
            <form action="manage" method="get">
                <select name="typepage" class="hoadon_type">
                    <option value="0" <%=request.getAttribute("typepage_thuexe_Selected")%>>H??a ????n thu?? xe</option>
                    <option value="1" <%=request.getAttribute("typepage_dichvu_Selected")%>>H??a ????n ?????t d???ch v???</option>
                </select>  
                <button id="btn_thuexe" style="padding: 5px 15px">OK</button>
            </form>  
        </div>   
        <%String type = "";
            String billid = "";%>
        <%if (listthuexe != null) {%>
        <%
            type = "thuexe";

            int pageindex = (int) request.getAttribute("pageindex");
            int totalNumberPage = (int) request.getAttribute("totalNumberPage");
        %>

        <table border="1">
            <thead>
                <tr>
                    <th>H??a ????n ID</th>
                    <th>Account ID</th>
                    <th>????n v???</th>
                    <th>Kh??ch h??ng</th>
                    <th>CMND/CCCD</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>M?? gi???i thi???u</th>
                    <th>M?? xe</th>
                    <th>Lo???i xe thu??</th>
                    <th>Ng??y ?????t thu??</th>
                    <th>Ng??y nh???n xe</th>
                    <th>Ng??y tr??? xe</th>
                    <th>S??? ng??y thu??</th>
                    <th>Gi?? ti???n/ng??y</th>
                    <th>T???ng ti???n</th>
                </tr>
            </thead>
            <tbody>

                <%for (Bill bill : listthuexe) {
                %>
                <tr>
                    <td><%=bill.getId()%></td>
                    <td><%=bill.getAccId()%></td>
                    <td><%=bill.getDonvi()%></td>
                    <td><%=bill.getNameCustomer()%></td>
                    <td><%=bill.getCMND()%></td>
                    <td><%=bill.getEmail()%></td>
                    <td><%=bill.getPhone()%></td>
                    <td><%=bill.getCode_inv()%></td>
                    <td><%=bill.getCarId()%></td>
                    <td><%=bill.getCarname()%></td>
                    <td><%=bill.getDaybill()%></td>
                    <td><%=bill.getStartday()%></td>
                    <td><%=bill.getEndday()%></td>
                    <td><%=bill.getThoiluong()%></td>
                    <td><%=bill.getPrice()%></td>
                    <td><%=bill.getTotal()%></td>
                    <td><a href="edit?page=<%=pageindex%>&type=thuexebill&thuexeid=<%=bill.getId()%>">Edit</a></td>
                    <%billid = bill.getId();%>
                    <td><a href="#" onclick="deleteBill(<%=bill.getId()%>)">Delete</a></td>
                </tr>
                <%}%>
            </tbody>

        </table>
        <div class="link_page"><%=HtmlHelper.pager(5, pageindex, totalNumberPage, typepage)%></div>

        <%} else {%>
        <%
            type = "dichvu";
            int pageindex = (int) request.getAttribute("pageindex");
            int totalNumberPage = (int) request.getAttribute("totalNumberPage");
        %>
        <table border="1">
            <thead>
                <tr>
                    <th>H??a ????n ID</th>
                    <th>Account ID</th>
                    <th>T??n kh??ch h??ng</th>
                    <th>S??? ??i???n tho???i</th>
                    <th>Email</th>
                    <th>Lo???i xe</th>
                    <th>S??? km</th>
                    <th>Bi???n s??? xe</th>
                    <th>D???ch v??? y??u c???u</th>
                    <th>Ng??y ?????t l???ch</th>
                    <th>Ng??y b???o d?????ng</th>
                    <th>Th???i gian</th>
                </tr>
            </thead>
            <tbody>

                <%for (BookingBill bill : listdichvu) {
                %>
                <tr>
                    <td><%=bill.getId()%></td>
                    <td><%=bill.getAccId()%></td>
                    <td><%=bill.getNameCustomer()%></td>
                    <td><%=bill.getPhone()%></td>
                    <td><%=bill.getEmail()%></td>
                    <td><%=bill.getCarName()%></td>
                    <td><%=bill.getKm()%></td>
                    <td><%=bill.getBienso()%></td>
                    <td><%=bill.getDichvu()%></td>
                    <td><%=bill.getNgaybooking()%></td>
                    <td><%=bill.getNgay()%></td>
                    <td><%=bill.getGio()%></td>  
                    <td><a href="edit?page=<%=pageindex%>&type=dichvubill&dichvuid=<%=bill.getId()%>">Edit</a></td>
                    <td><a href="#" onclick="deleteBill2(<%=bill.getId()%>)">Delete</a></td>
                </tr>
                <%}%>
            </tbody>
        </table>
        <div class="link_page"><%=HtmlHelper.pager(5, pageindex, totalNumberPage, typepage)%></div>
        <%}%>
        <%}%>

        <script>
            function deleteBill(id) {
                var option = confirm("B???n c?? ch???c ch???n mu???n x??a kh??ng ?" + id);
                if (option === true) {
                    window.location.href = 'delete?type=thuexe&thuexeid=' + id;
                }
            }
            function deleteBill2(id) {
                var option = confirm("B???n c?? ch???c ch???n mu???n x??a kh??ng ?" + id);
                if (option === true) {
                    window.location.href = 'delete?type=dichvu&dichvuid=' + id;
                }
            }
            function deleteBill3(id) {
                var option = confirm("B???n c?? ch???c ch???n mu???n x??a kh??ng ?" + id);
                if (option === true) {
                    window.location.href = 'delete?type=tainguyen&tainguyenid=' + id;
                }
            }
        </script>
    </body>
</html>
