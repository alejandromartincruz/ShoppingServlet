<%@ page session="true" 
import="edu.upc.eetac.dsa.amartin.BeanSQL.BeanSQL"

%>
<html>
<head>
 <title>CDs poplen, m�sica a tutiplen</title>
</head>
<body bgcolor="#00BFFF">
 <font face="Times New Roman,Times" size="+6">
  <b>CDs poplen, m�sica a tutiplen</b>
 </font>
 <hr><p>
 <center>
 <form name="shoppingForm" 
   action="/ShoppingServlet/Cart.jsp" 
   method="POST">
 <b>CD:</b> 
 <select name=CD>
 <!--   
  <option>Yuan | The Guo Brothers | China | 4.95</option>
  <option>Drums of Passion | Babatunde Olatunji | Nigeria | 6.95</option>
  <option>Kaira | Tounami Diabate| Mali | 6.95</option>
  <option>The Lion is Loose | Eliades Ochoa | Cuba | 3.95</option>
  <option>Dance the Devil Away | Outback | Australia | 4.95</option>
  <option>Record of Changes | Samulnori | Korea | 2.95</option>
  <option>Djelika | Tounami Diabate | Mali | 4.95</option>
  <option>Rapture | Nusrat Fateh Ali Khan | Pakistan | 2.95</option>
  <option>Cesaria Evora | Cesaria Evora | Cape Verde | 6.95</option>
  <option>Ibuki | Kodo | Japan | 3.95</option> 
  -->
<!-- Codigo java -->

<%
BeanSQL BSQL = new BeanSQL();
String lista = BSQL.GetCDs();
out.println(lista);
%>

 </select>
 <b>Quantity: </b><input type="text" name="qty" SIZE="3" value=1>
 <input type="hidden" name="action" value="ADD">
 <input type="submit" name="Submit" value="Add to Cart">
 </form>
 </center>
 <p>
 <jsp:include page="Cart.jsp" flush="true" />
</body>
</html>