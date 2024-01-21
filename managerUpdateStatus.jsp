<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String managerICNumber = (String) session.getAttribute("managerICNumber");
boolean login;

if (managerICNumber != null) {
	//response.sendRedirect("");
	login = true;
} else {
	login = false;
}

%>  

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Ansonika">
    <title>Ombak Biru Chalet</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.png" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/logo_dchalet.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/logo_dchalet.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/logo_dchalet.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/logo_dchalet.png">

    <!-- GOOGLE WEB FONT-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Caveat:wght@400;500&family=Montserrat:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">

    <!-- BASE CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/vendors.min.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="css/custom.css" rel="stylesheet">
</head>

<body class="datepicker_mobile_full">
    <div id="preloader">
        <div data-loader="circle-side"></div>
    </div><!-- /Page Preload -->

    <div class="layer"></div>


    <header class="reveal_header bg-dark">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-6">
                    <a href="index.html" class="logo_normal"><img src="img/logo.png" width="135" height="45" alt=""></a>
                    <a href="index.html" class="logo_sticky"><img src="img/logo_sticky.png" width="135" height="45"
                            alt=""></a>
                </div>
                <div class="col-6">
                    <nav>
                        <ul>
                            <li><a class="btn_1 btn_scrollto">Manager</a></li>
                            <li>
                                <div class="hamburger_2 open_close_nav_panel">
                                    <div class="hamburger__box">
                                        <div class="hamburger__inner"></div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div><!-- /container -->
    </header><!-- /Header -->



     <!-- -------------------- sidebar panel ------------------------- -->
     <div class="nav_panel">
        <a href="#" class="closebt open_close_nav_panel"><i class="bi bi-x"></i></a>
        <div class="logo_panel"><img src="img/logo_sticky.png" width="135" height="45" alt=""></div>
        <div class="sidebar-navigation">
            <nav>
                <ul class="level-1">
                    <li class=""><a href="SidebarController?action=managerHome&user=manager&staffICNumber=${staff.staffICNumber}"><i class="bi bi-house" style="font-size: 25px;"></i>
                    		        &nbsp;Home</a></li>
                    		<li class=""><a href="SidebarController?action=managerUpdateStatus&user=manager&staffICNumber=${staff.staffICNumber}"><i class="bi bi-clipboard-check"
                    	            style="font-size: 25px;"></i>&nbsp; Room Reservation</a></li>
                    		<li><a href="SidebarController?action=managerStaffList&user=manager&staffICNumber=${staff.staffICNumber}"><i class="bi bi-person-badge"
                    	            style="font-size: 25px;"></i>&nbsp; Manage Staff</a></li>
                    		<li><a href="SidebarController?action=managerRoomList&user=manager&staffICNumber=${staff.staffICNumber}"><i class="bi bi-pencil-square"
                        	        style="font-size: 25px;"></i>&nbsp; Manage Room</a></li>
                    		<li><a href="SidebarController?action=managerServiceList&user=manager&staffICNumber=${staff.staffICNumber}"><i class="bi bi-nut" style="font-size: 25px;"></i>&nbsp;
                        		    Manage Room Service</a></li>
                    		<li><a href="SidebarController?action=managerGuestList&user=manager&staffICNumber=${staff.staffICNumber}"><i class="bi bi-people"
                        		    style="font-size: 25px;"></i>&nbsp; Manage Guest</a></li>
                    		<li class="mt-5"><a href="LoginController?action=logout" class="btn btn-danger pt-3"
                        		    style="color: white; border-radius: 10px 10px 10px 10px; height: 50px;">Logout</a></li>
                </ul>
                <div class="panel_footer">
                    <div class="copy">
                        <div class="container py-3">
                            © Ombak Biru Chalet Malaysia
                        </div>
                    </div>
                </div>
                <!-- /panel_footer -->
            </nav>
        </div>
        <!-- /sidebar-navigation -->
    </div>
    <!-- /nav_panel -->


    <main>
        <div class="container mt-5">
            &nbsp;
        </div>
        <div class="container mt-5 mb-5 align-items-center">
            <div class="row">
                <div class="col"></div>
                <div class="col-md card card-body py-5">
                    <div class="row my-3 text-center">
                        <span>
                            <h1>Reservation List</h1>
                        </span>
                    </div>
                    <div class="row mx-2">
                        <table class="table table-hover table-bordered">
                            <thead style="vertical-align: middle;">
                                <th class="text-center">Reservation ID</th>
                                <th class="text-center">Guest IC Number</th>
                                <th class="text-center">Guest Quantity</th>
                                <th class="text-center">Duration of Stay</th>
                                <th class="text-center">Date Start</th>
                                <th class="text-center">Date End</th>
                                <th class="text-center">Total Adult</th>
                                <th class="text-center">Total Kids</th>
                                <th class="text-center">Total Room</th>
                                <th class="text-center">Total Payment</th>
                                <th class="text-center col-2">Status</th>
                            </thead>
                            <tbody>
                                <c:forEach var="reservation" items="${reservation}">
                                <tr>
                                    <td class="text-center"><c:out value="${reservation.reservationID}"/></td>
                                    <td class="text-center"><c:out value="${reservation.guestICNumber}"/></td>
                                    <td class="text-center"><c:out value="${reservation.guestQuantity}"/></td>
                                    <td class="text-center"><c:out value="${reservation.durationOfStay}"/></td>
                                    <td class="text-center" width="100"><c:out value="${reservation.dateStart}"/></td>
                                    <td class="text-center" width="100"><c:out value="${reservation.dateEnd}"/></td>
                                    <td class="text-center"><c:out value="${reservation.totalAdult}"/></td>
                                    <td class="text-center"><c:out value="${reservation.totalKids}"/></td>
                                    <td class="text-center"><c:out value="${reservation.totalRoom}"/></td>
                                    <td class="text-center"><c:out value="${reservation.totalPayment}"/></td>
                                    <td class="text-center">
                                        <form action="StaffController?action=updateStatus&user=manager">
                                            <div class="custom_select text-center">
                                                <select name="reserveStatus" id="Status" class="wide">
                                                    <option value="">Select</option>
                                                    <option value="Pending Payment" <c:if test="${reservation.reserveStatus == 'Pending Payment'}">Selected</c:if>>Pending Payment</option>
                                                    <option value="Paid" <c:if test="${reservation.reserveStatus == 'Paid'}">Selected</c:if>>Paid</option>
                                                </select>
                                            </div>
                                            <a href="">Confirm</a>
                                        </form>
                                    </td>
                                </tr>
                                    </c:forEach>
                                <tr>
                                    <td class="text-center">RS002</td>
                                    <td class="text-center">880102034571</td>
                                    <td class="text-center">4</td>
                                    <td class="text-center">1</td>
                                    <td class="text-center">30-12-2022</td>
                                    <td class="text-center">31-12-2022</td>
                                    <td class="text-center">2</td>
                                    <td class="text-center">2</td>
                                    <td class="text-center">1</td>
                                    <td class="text-center">RM80.00</td>
                                    <td class="text-center">
                                        <form action="managerViewReservation.html">
                                            <div class="custom_select">
                                                <select name="Status" id="Status" class="wide" disabled>
                                                    <option value="Pending Payment">Pending Payment</option>
                                                    <option value="paid" selected>Paid</option>
                                                </select>
                                            </div>
                                        </form>
                                    </td>
                                </tr>
                                
                               
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col"></div>
            </div>
        </div>
        <br>
    </main>

    <footer class="revealed">
        <div class="footer_bg">
            <div class="gradient_over"></div>
        </div>
        <div class="container">
            <div class="row move_content">
                <div class="col-lg-4 col-md-12">
                    <h5>Contacts</h5>
                    <ul>
                        <li>Jalan Telok Gong / Pengkalan Balak, Kampung Sungai Tuang<br>78300 Masjid Tanah,
                            Melaka<br><br></li>
                        <li><strong><a href="#0">dchaletombakbiru@gmail.com</a></strong></li>
                        <li><strong><a href="#0">016-2115359/012-2431337</a></strong></li>
                    </ul>
                    <div class="social">
                        <ul>
                            <li><a href="#0"><i class="bi bi-instagram"></i></a></li>
                            <li><a href="#0"><i class="bi bi-whatsapp"></i></a></li>
                            <li><a href="#0"><i class="bi bi-facebook"></i></a></li>
                            <li><a href="#0"><i class="bi bi-twitter"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--/container-->
        <div class="copy">
            <div class="container">
                © Ombak Biru Chalet - by <a href="#">Ocean Blue Lemond</a>
            </div>
        </div>
    </footer>
    <!-- /footer -->

    <div class="progress-wrap">
        <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
            <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
        </svg>
    </div>
    <!-- /back to top -->

    <!-- COMMON SCRIPTS -->
    <script src="js/common_scripts.js"></script>
    <script src="js/common_functions.js"></script>
    <script src="js/datepicker_inline.js"></script>
    <script src="phpmailer/validate.js"></script>

</body>

</html>
