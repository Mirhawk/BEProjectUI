
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="sun.jdbc.odbc.OdbcDef"%>
<%-- 
    Document   : table
    Created on : Sep 30, 2014, 7:59:15 PM
    Author     : Mirhawk
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    	
	
	<style type="text/css">
		
th{
color:#000000;
font-weight:bold;
}
.td_critical{
/*background-color:#800000;*/
background-color:#800000;
color:#FFFFFF;
font-weight:bold;

}
.td_very_poor{
background-color:#FF0000;
/*background-color:#FF6600;*/
color:#FFFFFF;
font-weight:bold;

}
.td_poor{
/*background-color:#800000;*/
background-color:#FF6600;
color:#FFFFFF;
font-weight:bold;

}
.td_moderate{
background-color:#FFFF00;
color:#000000;
font-weight:bold;

}
.td_good{
background-color:#009900;
color:#000000;
font-weight:bold;

}
td{
text-align:center}
	</style>
    <body background="images/bg-blue.gif"                                             
  leftMargin="0" topMargin="0"                                  
 marginheight="0" marginwidth="0
 <div style="float:left; margin:0 auto; width:425px; margin-top:3px; padding-top:3px; height:35px" class="hr01" id="vdividermenu">
           <ul>
                        <li>
                           <a title="Home" target="I2" href="index.jsp">Home</a>
                           <a title="Forecast" target="I2" href="table.jsp">Forecast</a> 
                           <a title="Team" target="I2" href="AboutUs.jsp">Team</a>
                           
                         </li>
                        </ul>
     </div>
        <%
            


              /*    
		  Connection con=null;
		  try   {
                        //Class.forName("oracle.jdbc.driver.OracleDriver");
                        Class.forName("com.mysql.jdbc.Driver");
                        }
                  catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
                        }
                    try {
			//con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","mirhawk","apache");
                        con =DriverManager.getConnection("jdbc:mysql://localhost:3308/userdb","mirhawk","apache");
                        }
                    catch (SQLException e) {
                                            // TODO Auto-generated catch block
                                            e.printStackTrace();
                                            }		
		
                   
*/
            
String mod="Health Advisory : Air quality is acceptable; however, there may be a moderate health concern for people sensitive to air pollution.";
String poor="Health Advisory : Sensitive people may experience health effects.The general public is less likely to be affected.";
String good="Health Advisory : Air Quality is satisfactory and air pollution poses little or no risk.";
String nu1,nu2,nu3,nu4,nu5,nu6,nu7,nu8,nu9;
String gd="Good",pr="Poor",md="Moderate";
String nh1,nh2,nh3,nh4,nh5,nh6,nh7,nh8,nh9;
String modc="#FFFF00",gdc="#009900",prc="#FF6600";

Integer num1,num2,num3,num4,num5,num6,num7,num8,num9;


    Connection ccon =null;
    try {
			Class.forName("com.mysql.jdbc.Driver");
	} 
    catch (ClassNotFoundException e) {
            	e.printStackTrace();
		}
    try {
        ccon =DriverManager.getConnection("jdbc:mysql://localhost:3308/weather","mirhawk","apache");
	} 
    catch (SQLException e) {
           		   e.printStackTrace();
                           }		
    
    String cquery;
    try {        
         Statement cstmt = (Statement) ccon.createStatement();
//         cquery = "SELECT * from userchat";
         cquery="SELECT * FROM val";
         cstmt.executeQuery(cquery);
         ResultSet rs = cstmt.getResultSet();
         while(rs.next()){
         num1 = rs.getInt("num1");
         num2 = rs.getInt("num2");
         num3 = rs.getInt("num3");
         num4 = rs.getInt("num4");
         num5 = rs.getInt("num5");
         num6 = rs.getInt("num6");
         num7 = rs.getInt("num7");
         num8 = rs.getInt("num8");
         num9 = rs.getInt("num9");
         
         request.setAttribute("num1", num1); 
         request.setAttribute("num2", num2); 
         request.setAttribute("num3", num3); 
         request.setAttribute("num4", num4); 
         request.setAttribute("num5", num5); 
         request.setAttribute("num6", num6); 
         request.setAttribute("num7", num7); 
         request.setAttribute("num8", num8); 
         request.setAttribute("num9", num9); 
         if(num1>100 && num1<200)
            {
                request.setAttribute("nu1", good); 
                request.setAttribute("nh1", gd); 
                request.setAttribute("co1", gdc); 
            
            }
         else if(num1<100)
            {
                request.setAttribute("nu1", poor); 
                request.setAttribute("nh1", pr); 
                request.setAttribute("co1", prc); 
            }
         else if(num1>200)
            {
                request.setAttribute("nu1", mod); 
                request.setAttribute("nh1", md); 
                request.setAttribute("co1", modc);
            }
                 //END: num1
         if(num2>=100 && num2<200)
            {
                request.setAttribute("nu2", good); 
                request.setAttribute("nh2", gd); 
                request.setAttribute("co2", gdc); 
            
            }
         else if(num2<100)
            {
                request.setAttribute("nu2", poor); 
                request.setAttribute("nh2", pr); 
                request.setAttribute("co2", prc); 
            }
         else if(num2>200)
            {
                request.setAttribute("nu2", mod); 
                request.setAttribute("nh2", md); 
                request.setAttribute("co2", modc);
            }
                 //END: num2
         if(num3>100 && num3<200)
            {
                request.setAttribute("nu3", good); 
                request.setAttribute("nh3", gd); 
                request.setAttribute("co3", gdc); 
            
            }
         else if(num3<100)
            {
                request.setAttribute("nu3", poor); 
                request.setAttribute("nh3", pr); 
                request.setAttribute("co3", prc); 
            }
         else if(num3>200)
            {
                request.setAttribute("nu3", mod); 
                request.setAttribute("nh3", md); 
                request.setAttribute("co3", modc);
            }
                 //END: num3
        if(num4>100 && num4<200)
            {
                request.setAttribute("nu4", good); 
                request.setAttribute("nh4", gd); 
                request.setAttribute("co4", gdc); 
            
            }
         else if(num4<100)
            {
                request.setAttribute("nu4", poor); 
                request.setAttribute("nh4", pr); 
                request.setAttribute("co4", prc); 
            }
         else if(num4>200)
            {
                request.setAttribute("nu4", mod); 
                request.setAttribute("nh4", md); 
                request.setAttribute("co4", modc);
            }
                 //END: num4
        if(num5>100 && num5<200)
            {
                request.setAttribute("nu5", good); 
                request.setAttribute("nh5", gd); 
                request.setAttribute("co5", gdc); 
            
            }
         else if(num5<100)
            {
                request.setAttribute("nu5", poor); 
                request.setAttribute("nh5", pr); 
                request.setAttribute("co5", prc); 
            }
         else if(num5>200)
            {
                request.setAttribute("nu5", mod); 
                request.setAttribute("nh5", md); 
                request.setAttribute("co5", modc);
            }
                 //END: num5
        if(num6>100 && num6<200)
            {
                request.setAttribute("nu6", good); 
                request.setAttribute("nh6", gd); 
                request.setAttribute("co6", gdc); 
            
            }
         else if(num6<100)
            {
                request.setAttribute("nu6", poor); 
                request.setAttribute("nh6", pr); 
                request.setAttribute("co6", prc); 
            }
         else if(num6>200)
            {
                request.setAttribute("nu6", mod); 
                request.setAttribute("nh6", md); 
                request.setAttribute("co6", modc);
            }
                 //END: num6
        if(num7>100 && num7<200)
            {
                request.setAttribute("nu7", good); 
                request.setAttribute("nh7", gd); 
                request.setAttribute("co7", gdc); 
            
            }
         else if(num7<100)
            {
                request.setAttribute("nu7", poor); 
                request.setAttribute("nh7", pr); 
                request.setAttribute("co7", prc); 
            }
         else if(num7>200)
            {
                request.setAttribute("nu7", mod); 
                request.setAttribute("nh7", md); 
                request.setAttribute("co7", modc);
            }
                 //END: num7
        if(num8>100 && num8<200)
            {
                request.setAttribute("nu8", good); 
                request.setAttribute("nh8", gd); 
                request.setAttribute("co8", gdc); 
            
            }
         else if(num8<100)
            {
                request.setAttribute("nu8", poor); 
                request.setAttribute("nh8", pr); 
                request.setAttribute("co8", prc); 
            }
         else if(num8>200)
            {
                request.setAttribute("nu8", mod); 
                request.setAttribute("nh8", md); 
                request.setAttribute("co8", modc);
            }
                 //END: num8
        if(num9>100 && num9<200)
            {
                request.setAttribute("nu9", good); 
                request.setAttribute("nh9", gd); 
                request.setAttribute("co9", gdc); 
            
            }
         else if(num9<100)
            {
                request.setAttribute("nu9", poor); 
                request.setAttribute("nh9", pr); 
                request.setAttribute("co9", prc); 
            }
         else if(num9>200)
            {
                request.setAttribute("nu9", mod); 
                request.setAttribute("nh9", md); 
                request.setAttribute("co9", modc);
            }
                 //END: num9
        
           
                        }
         }
    catch (SQLException e) {
                           // TODO Auto-generated catch block
                           e.printStackTrace();
                           }    
    
            %>
        <br><br><br><br><br><br><br><br><br>
        <div style="text-align: center;"> <a href="http://202.54.31.7/citywx/generated/Pune.png" target=_blank><img src="http://202.54.31.7/citywx/generated/Pune.png" width=600 height=215 border=0 align="middle"></a></div>>
       <table align="center" width="550px" border="1" cellspacing="0">
  <tbody><tr>
    <th width="120px">Pollutants</th>
    <th width="43">Pune Today</th>
	<th width="110">Attribute</th>
	<th width="99">Tomorrow's Forecast</th>
	<th width="110">Attribute</th>
	<th width="110">After 3 days Forecast</th>
	<th width="113">Attribute</th>
  </tr>
  
  <tr>
    <td>PM<sub>10</sub>&nbsp;(µgm<sup>-3</sup>)</td>
	
    <td><%= request.getAttribute("num1") %></td>

<!--
<td class="td_moderate" style="color:#000000 ">
<span title="Health Advisory : Air quality is acceptable; however, there may be 
a moderate health concern for people sensitive to air pollution.">Moderate</span>
</td>
-->
<td style="background-color:<%= request.getAttribute("co1") %>">
    <span title=<%=request.getAttribute("nu1")%>><%=request.getAttribute("nh1")%></span>
</td>




    <td><%= request.getAttribute("num2") %></td>

<td style="background-color:<%= request.getAttribute("co2") %>">
    <span title=<%=request.getAttribute("nu2")%>><%=request.getAttribute("nh2")%></span>
</td>
	
	<td><%= request.getAttribute("num3") %></td>




<td style="background-color:<%= request.getAttribute("co3") %>">
    <span title=<%=request.getAttribute("nu3")%>><%=request.getAttribute("nh3")%></span>
</td>


  </tr>
  
  <tr>
    <td>PM<sub>2.5</sub>&nbsp;(µgm<sup>-3</sup>)</td>
    <td><%= request.getAttribute("num4") %></td>



<td style="background-color:<%= request.getAttribute("co4") %>">
    <span title=<%=request.getAttribute("nu4")%>><%=request.getAttribute("nh4")%></span>
</td>


	
    <td><%= request.getAttribute("num5") %></td>


<td style="background-color:<%= request.getAttribute("co5") %>">
    <span title=<%=request.getAttribute("nu5")%>><%=request.getAttribute("nh5")%></span>
</td>



	
	<td> <p><%= request.getAttribute("num6") %></p></td>


<td style="background-color:<%= request.getAttribute("co6") %>">
    <span title=<%=request.getAttribute("nu6")%>><%=request.getAttribute("nh6")%></span>
</td>


  </tr>
  
  <tr>
    <td>O<sub>3</sub>&nbsp;(ppb)</td>
    
	<td><%= request.getAttribute("num7") %></td>


<td style="background-color:<%= request.getAttribute("co7") %>">
    <span title=<%=request.getAttribute("nu7")%>><%=request.getAttribute("nh7")%></span>
</td>


	<td><%= request.getAttribute("num8") %></td>


<td style="background-color:<%= request.getAttribute("co8") %>">
    <span title=<%=request.getAttribute("nu8")%>><%=request.getAttribute("nh8")%></span>
</td>


	<td><%= request.getAttribute("num9") %></td>

<td style="background-color:<%= request.getAttribute("co9") %>">
    <span title=<%=request.getAttribute("nu9")%>><%=request.getAttribute("nh9")%></span>
</td>




</tr>
</tbody></table>



        
        
        
        
    </body>
</html>
