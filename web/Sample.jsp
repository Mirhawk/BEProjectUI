<%-- 
    Document   : Sample.jsp
    Created on : Oct 3, 2014, 7:13:35 PM
    Author     : Mirhawk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.TimerTask"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="margin: 15px 0px 0px; display: inline-block; text-align: center; width: 200px;"><div style="display: inline-block; padding: 2px 4px; margin: 0px 0px 5px; border: 1px solid rgb(204, 204, 204); text-align: center; background-color: rgb(255, 255, 255);"><a href="" style="text-decoration: none; font-size: 13px; color: rgb(0, 0, 0);"> </a></div><script type="text/javascript" src="http://localtimes.info/clock.php?&cp1_Hex=000000&cp2_Hex=FFFFFF&cp3_Hex=000000&fwdt=200&ham=0&hbg=0&hfg=0&sid=0&mon=0&wek=0&wkf=0&sep=0&widget_number=1000"></script></div>
        
        
        <script type="text/javascript">
tday  =new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
tmonth=new Array("January","February","March","April","May","June","July","August","September","October","November","December");

function GetClock(){
d = new Date();
nday   = d.getDay();
nmonth = d.getMonth();
ndate  = d.getDate();
nyear = d.getYear();
nhour  = d.getHours();
nmin   = d.getMinutes();
nsec   = d.getSeconds();

if(nyear<1000) nyear=nyear+1900;

if(nhour ==  0) {ap = "  ";} 
else if(nhour <= 11) {ap = "  ";} 
else if(nhour == 12) {ap = " ";} 
else if(nhour >= 13) {ap = " ";}
     

if(nmin <= 9) {nmin = "0" +nmin;}
if(nsec <= 9) {nsec = "0" +nsec;}


document.getElementById('clockbox').innerHTML=""+tday[nday]+", "+tmonth[nmonth]+" "+ndate+", "+nyear+" "+nhour+":"+nmin+":"+nsec+ap+"";
setTimeout("GetClock()", 1000);
}
window.onload=GetClock;
</script>
<div id="clockbox" style="text-align: center"></div>




<script>
var myTimeVar=setInterval(function(){myTimer()},1000);
function myTimer()
{

Date d1 = new Date();
SimpleDateFormat df;
df = new SimpleDateFormat('MM/dd/YYYY HH:mm AM');
var formattedDate = df.format(d1);
document.getElementById("showtime").innerHTML=df.format(d1);
}
</script>

<div id="showtime" style="text-align: center"></div>
  

    </body>
</html>
