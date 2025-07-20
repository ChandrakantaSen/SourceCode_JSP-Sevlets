<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="stylesheet.css" />
<script type="text/javascript" src="stopwatch.js"></script>
<title>Registration Form</title>
</head>
<body id="startstoptimer" onLoad="startstop()" style="font-weight:bold" >
	<fieldset>
	<legend>Registration Form:</legend>
	<form name= "regform" action="regformoutput.jsp" method="post" align='justify'>
	    <table border="0" align="right">
                <tr>
                    <td>
                        <div>
                            <input id="clock" type="text" value="00:00" 
                            style="text-align:center; 
                            background-color:white;
                            border:0px solid gray;
                            font-weight:bold;
                            font-size:14pt;" readonly>
                        </div>
                    </td>
                </tr>	
            </table>  
            <!-- Jsp code starts here -->
            <table border="0">
               <!--     <tr>
                        <td><b>Id:</b></td>
                        <td><input type="text" name="id" value="" maxlength="25" disabled ></td>
                    </tr>      -->
			<tr>
        			<td><b>First Name:</b></td>
				<td><input type="text" name="fname" value="" placeholder="--Enter the name--" required="true" maxlength="30"/></td>
			</tr>
			<tr>
				<td><b>Last Name:</b></td>
				<td><input type="text" name="lname" value="" placeholder="--Enter the name--" required="true" maxlength="15"/></td>
			</tr>
			<tr>
				<td><b>Sex:</b></td>
				<td>
						Male:<input type="radio" name="sex" value="Male" checked />&nbsp;
						Female:<input type="radio" name="sex" value="Female"/>
				</td>
			</tr>
                        <tr>
                            <td><b>Roll:</b></td>
                            <td>
                                <input type="text" name="roll" value="" placeholder="--Enter the roll--" required="true" maxlength="15"/>
                            </td>
                        </tr>
                        <tr>
                            <td><b>Year:</b></td>
                            <td>
                                <input type="text" name="year" value="" placeholder="--Enter the year--" maxlength="15"/>
                            </td>
                        </tr>
			<tr>
				<td> <b>Department:</b></td>
				<td>
				    <select name="dept" >
				      <option value="--Select the Department--">--Select the Department--</option>
                                      <option value="MCA">MCA</option>
				      <option value="CS">CS</option>
				      <option value="ECE">ECE</option>
                                      <option value="IT">IT</option>
				    </select>
				</td>
			</tr>
                        <tr>
                            <td><b>Caste:</b></td>
                            <td>
                                <select name="caste">
                                    <option value="--Select the Caste--">--Select the Caste--</option>
                                    <option value="Gen">Gen</option>
                                    <option value="SC">SC</option>
                                    <option value="ST">ST</option>
                                    <option value="OBC">OBC</option>
                                </select>
                            </td>
                        </tr>
			<tr>
				<td><b>Address:</b></td>
				<td><input type="textarea" name="add" rows="20" cols="30" placeholder="--Enter the address--" required="true" 									  maxlength="50"/></td>
			</tr>
			<tr>
				<td><b>City:</b></td>
				<td><input type="text" name="city" value="" placeholder="--Enter the city--" maxlength="10"/></td>
			</tr>
			<tr>
			<td><b>Pincode:</b></td>
			<td><input type="text" name="pincode" value="" placeholder="--Enter the pincode--" maxlength="10"/></td>
			</tr>
			<tr>
				<td><b>Email:</b></td>
				<td><input type="text" name="email" placeholder="--Enter the email--" maxlength="30" /></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" name="submit" value="Register">
				    <input type="reset" name="reset" value="Reset"></td>
			</tr>
		</table>
	</form>
	</fieldset>
</body>
</html>