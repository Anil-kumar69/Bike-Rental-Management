<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #0c0c0c 0%, #1a1a1a 100%);
        height: 100vh;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
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

    .menu-container {
        background: linear-gradient(135deg, rgba(45, 45, 45, 0.8) 0%, rgba(26, 26, 26, 0.8) 100%);
        backdrop-filter: blur(15px);
        padding: 50px 40px;
        border-radius: 20px;
        box-shadow: 0 20px 40px rgba(0, 0, 0, 0.6),
                    0 0 0 1px rgba(255, 255, 255, 0.1);
        text-align: center;
        width: 400px;
        color: white;
        border: 1px solid rgba(255, 255, 255, 0.1);
    }

    h1 {
        color: #ffffff;
        margin-bottom: 40px;
        font-size: 28px;
        letter-spacing: 1.5px;
        font-weight: 300;
        text-transform: uppercase;
    }

    form {
        display: flex;
        flex-direction: column;
        align-items: center;
        margin: 20px 0;
    }

    input[type="submit"] {
        width: 100%;
        padding: 15px;
        margin-top: 10px;
        border: none;
        border-radius: 8px;
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

    /* Button color variations - updated with transparency */
    form:nth-child(2) input[type="submit"] {
        background: linear-gradient(135deg, rgba(85, 85, 85, 0.8) 0%, rgba(51, 51, 51, 0.8) 100%);
    }

    form:nth-child(2) input[type="submit"]:hover {
        background: linear-gradient(135deg, rgba(102, 102, 102, 0.9) 0%, rgba(68, 68, 68, 0.9) 100%);
    }

    form:nth-child(3) input[type="submit"] {
        background: linear-gradient(135deg, rgba(68, 68, 68, 0.8) 0%, rgba(34, 34, 34, 0.8) 100%);
    }

    form:nth-child(3) input[type="submit"]:hover {
        background: linear-gradient(135deg, rgba(85, 85, 85, 0.9) 0%, rgba(51, 51, 51, 0.9) 100%);
    }

    form:nth-child(4) input[type="submit"] {
        background: linear-gradient(135deg, rgba(51, 51, 51, 0.8) 0%, rgba(17, 17, 17, 0.8) 100%);
    }

    form:nth-child(4) input[type="submit"]:hover {
        background: linear-gradient(135deg, rgba(68, 68, 68, 0.9) 0%, rgba(34, 34, 34, 0.9) 100%);
    }

    form:nth-child(5) input[type="submit"] {
        background: linear-gradient(135deg, rgba(34, 34, 34, 0.8) 0%, rgba(0, 0, 0, 0.8) 100%);
    }

    form:nth-child(5) input[type="submit"]:hover {
        background: linear-gradient(135deg, rgba(51, 51, 51, 0.9) 0%, rgba(17, 17, 17, 0.9) 100%);
    }
</style>
</head>
<body>
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
	
	<div class="menu-container">
		<h1>Admin Dashboard</h1>
		<form action="adminShowUsers">
			<input type="submit" value="Show All Users" required>
		</form>
		<form action="adminShowBikes">
			<input type="submit" value="Show All Bikes" required>
		</form>
		<form action="adminAddBike.jsp">
			<input type="submit" value="Add Bike" required>
		</form>
		<form action="Logout">
			<input type="submit" value="Logout">
		</form>
	</div>
</body>
</html>