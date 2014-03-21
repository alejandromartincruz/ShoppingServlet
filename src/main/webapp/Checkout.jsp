<%@ page session="true" import="java.util.*, shopping.CD, edu.upc.eetac.dsa.amartin.BeanSQL.BeanSQL" %>
<html>
<head>
<title>CDs poplen, música a tutiplen</title>
</head>
<body bgcolor="#00BFFF">
 <font face="Times New Roman,Times" size=+3>
  <b>Disco's Stu - Tus discos Stu-Pendos</b>
 </font>
 <hr><p>
 <center>
 <table border="0" cellpadding="0" width="100%" bgcolor="#FFFFFF">
 <tr>
 <td><b>ALBUM</b></td>
 <td><b>ARTIST</b></td>
 <td><b>COUNTRY</b></td>
 <td><b>PRICE</b></td>
 <td><b>QUANTITY</b></td>
 <td></td>
 </tr>
 <%
  Vector buylist = (Vector) session.getValue("shopping.shoppingcart");
  String amount = (String) request.getAttribute("amount");
  int discostotales = 0;
  for (int i=0; i < buylist.size();i++) {
   CD anOrder = (CD) buylist.elementAt(i);
   discostotales = discostotales + anOrder.getQuantity();
 %>
 <tr>
 <td><b><%= anOrder.getAlbum() %></b></td>
 <td><b><%= anOrder.getArtist() %></b></td>
 <td><b><%= anOrder.getCountry() %></b></td>
 <td><b><%= anOrder.getPrice() %></b></td>
 <td><b><%= anOrder.getQuantity() %></b></td>
 </tr>
 <%
  }
  session.invalidate();
 %>
 <tr>
 <td>     </td>
 <td>     </td>
 <td><b>TOTAL</b></td>
 <td><b>$<%= amount %></b></td>
 <td>     </td>
 </tr>
 </table>
 <p>
 <%
BeanSQL BSQL = new BeanSQL();
BSQL.SetCds(amount,discostotales);
%>
 <a href="/ShoppingServlet/EShop.jsp">Shop some more!</a>
 </center>
</body>
</html>