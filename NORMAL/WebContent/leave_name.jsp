<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%if(session.getAttribute("accessId") != null){out.println(session.getAttribute("accessId"));%>
<%}else{%><%}%>