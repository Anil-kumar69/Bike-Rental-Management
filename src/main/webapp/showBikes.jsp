<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bikes</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #0c0c0c 0%, #1a1a1a 100%);
        margin: 0;
        padding: 40px;
        color: white;
        min-height: 100vh;
        box-sizing: border-box;
        position: relative;
        overflow: hidden;
    }

    body::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: 
            radial-gradient(circle at 20% 50%, rgba(120, 119, 198, 0.3) 0%, transparent 50%),
            radial-gradient(circle at 80% 20%, rgba(255, 119, 198, 0.2) 0%, transparent 50%),
            radial-gradient(circle at 40% 80%, rgba(119, 198, 255, 0.2) 0%, transparent 50%);
        filter: blur(60px);
        z-index: -1;
        opacity: 0.5;
    }

    .container {
        max-width: 1200px;
        margin: 0 auto;
        position: relative;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        background: linear-gradient(135deg, rgba(45, 45, 45, 0.8) 0%, rgba(26, 26, 26, 0.8) 100%);
        backdrop-filter: blur(15px);
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 20px 40px rgba(0, 0, 0, 0.6);
        border: 1px solid rgba(255, 255, 255, 0.1);
    }

    th {
        background: linear-gradient(135deg, rgba(68, 68, 68, 0.8) 0%, rgba(51, 51, 51, 0.8) 100%);
        color: white;
        padding: 15px;
        text-align: left;
        font-weight: 600;
        text-transform: uppercase;
        letter-spacing: 1px;
        border-bottom: 2px solid rgba(85, 85, 85, 0.5);
    }

    td {
        padding: 12px 15px;
        border-bottom: 1px solid rgba(68, 68, 68, 0.5);
        color: #ccc;
    }

    tr:hover {
        background: rgba(255, 255, 255, 0.05);
    }

    tr:last-child td {
        border-bottom: none;
    }

    form {
        display: inline-block;
        margin: 0;
    }

    input[type="submit"] {
        padding: 8px 16px;
        border: none;
        border-radius: 6px;
        background: linear-gradient(135deg, rgba(85, 85, 85, 0.8) 0%, rgba(51, 51, 51, 0.8) 100%);
        color: #ffffff;
        font-size: 12px;
        font-weight: 600;
        cursor: pointer;
        transition: all 0.3s ease;
        text-transform: uppercase;
        letter-spacing: 0.5px;
        backdrop-filter: blur(5px);
    }

    input[type="submit"]:hover {
        transform: translateY(-1px);
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.4);
        background: linear-gradient(135deg, rgba(102, 102, 102, 0.9) 0%, rgba(68, 68, 68, 0.9) 100%);
    }

    p {
        background: linear-gradient(135deg, rgba(51, 51, 51, 0.8) 0%, rgba(68, 68, 68, 0.8) 100%);
        color: #ffffff;
        padding: 20px 30px;
        border-radius: 10px;
        margin: 20px 0;
        font-size: 16px;
        font-weight: 500;
        border-left: 4px solid #666;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        text-align: center;
        border: 1px solid rgba(255, 255, 255, 0.1);
        backdrop-filter: blur(10px);
    }

    h1 {
        color: #ffffff;
        text-align: center;
        margin-bottom: 30px;
        font-size: 28px;
        letter-spacing: 1.5px;
        font-weight: 300;
        text-transform: uppercase;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Available Bikes</h1>
        
        <%
        String msg = (String) request.getAttribute("msg");
        if (msg != null) {
        %>
        <p>
            <b><%=msg%></b>
        </p>
        <%
        }
        %>

        <table>
            <tr>
                <th>Model</th>
                <th>Brand</th>
                <th>Engine CC</th>
                <th>Bike Mileage</th>
                <th>Fuel Type</th>
                <th>Price</th>
                <th>Rent Type</th>
                <th>Available</th>
                <th>Confirm Booking</th>
            </tr>

            <c:forEach var="b" items="${showBikes }">
                <tr>
                    <td>${b.model }</td>
                    <td>${b.brand }</td>
                    <td>${b.engineCc }</td>
                    <td>${b.mileage }</td>
                    <td>${b.fuelType }</td>
                    <td>${b.price }</td>
                    <td>${b.rentType }</td>
                    <td>${b.available }</td>
                    <td>
                        <form action="bikeBooking" method="post">
                            <input type="hidden" name="id" value="${b.id }"> 
                            <input type="submit" value="Book Bike">
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>