<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking Success</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #0c0c0c 0%, #1a1a1a 100%);
        margin: 0;
        padding: 40px;
        color: white;
        min-height: 100vh;
        box-sizing: border-box;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        position: relative;
        overflow: auto;
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
        background: linear-gradient(135deg, rgba(45, 45, 45, 0.8) 0%, rgba(26, 26, 26, 0.8) 100%);
        backdrop-filter: blur(15px);
        padding: 40px;
        border-radius: 20px;
        box-shadow: 0 20px 40px rgba(0, 0, 0, 0.6),
                    0 0 0 1px rgba(255, 255, 255, 0.1);
        width: 500px;
        border: 1px solid rgba(255, 255, 255, 0.1);
    }

    h1 {
        color: #ffffff;
        margin-bottom: 30px;
        font-size: 28px;
        letter-spacing: 1.5px;
        font-weight: 300;
        text-transform: uppercase;
        text-align: center;
    }

    .success-details p {
        background: linear-gradient(135deg, rgba(51, 51, 51, 0.6) 0%, rgba(42, 42, 42, 0.6) 100%);
        color: #ffffff;
        padding: 15px 20px;
        border-radius: 8px;
        margin: 10px 0;
        font-size: 16px;
        border-left: 4px solid #666;
        border: 1px solid rgba(255, 255, 255, 0.1);
        backdrop-filter: blur(5px);
    }

    .success-details b {
        color: #ccc;
    }

    .message {
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

    form {
        margin-top: 30px;
        text-align: center;
    }

    input[type="submit"] {
        padding: 15px 30px;
        border: none;
        border-radius: 8px;
        background: linear-gradient(135deg, rgba(85, 85, 85, 0.8) 0%, rgba(51, 51, 51, 0.8) 100%);
        color: #ffffff;
        font-size: 16px;
        font-weight: 600;
        cursor: pointer;
        transition: all 0.3s ease;
        text-transform: uppercase;
        letter-spacing: 1px;
        backdrop-filter: blur(5px);
    }

    input[type="submit"]:hover {
        transform: translateY(-2px);
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.4);
        background: linear-gradient(135deg, rgba(102, 102, 102, 0.9) 0%, rgba(68, 68, 68, 0.9) 100%);
    }
</style>
</head>
<body>
	
	<div class="container">
		<h1>Booking Successful</h1>
		
		<%
		String msg = (String) request.getAttribute("msg");
		if (msg != null) {
		%>
		<div class="message">
			<b><%=msg%></b>
		</div>
		<%
		}
		%>
		
		<div class="success-details">
			<p>
				<b>Bike Model: </b> ${bookBike.model}
			</p>
			<p>
				<b>Rent Type: </b> ${bookBike.rentType}
			</p>
			<p>
				<b>Price Per Day: </b> ${bookBike.price}
			</p>
			<p>
				<b>Booking Status: </b> ${booking.status}
			</p>
			<p>
				<b>Booking Time: </b> ${booking.createdAt}
			</p>
			<p>
				<b>Bike Booking Date: </b> ${booking.startDate}
			</p>
			<p>
				<b>Booking Ends On: </b> ${booking.endDate}
			</p>
			<p>
				<b>Total Amount: </b> ${booking.totalAmount}
			</p>
		</div>
		
		<form action="UserHome.jsp">
			<input type="submit" value="Home">
		</form>
	</div>

</body>
</html>