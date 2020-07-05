<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="a" value="${java.util.Date}"/>
<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>${board.bno}번글</title>

  <!-- Custom fonts for this template -->
 


  <!-- Custom styles for this template -->
 

  <!-- Custom styles for this page -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="http://code.jquery.com/jquery-latest.js"></script>
  <script type="text/javascript">
  $(document).ready(function(){
	  var op=$("#operForm");
	  
	  $("button[data-oper='modify']").on("click",function(e){
		
		  op.attr("action","/board/modify").submit();
	  
	  });
	  
	  $("button[data-oper='list']").on("click",function(e){
		  op.find("#bno").remove();
		  op.attr("action","/board/list");
		  op.submit();
	  })
	  
	  
	  
  })
  
  
  </script>

</head>
<body>
<div class="row">
<div class="col-lg-12">
<h1 class="page-header"> </h1>
</div>
</div>

<div class="row">
<div class="col-lg-12">
<div class="panel panel-default">
<div class="panel-heading">board register</div>
<div class="panel-body">
<div class="form-group">
<label>글번호</label>
<input class="form-control" name='bno' value="${board.bno }" readonly>
</div>

<div class="form-group">
<label>title</label> <input class="form-control" name='title' value="${board.title }" readonly />
</div>

<div class="form-group">
<label>text area</label>
<textarea class="form-control" rows="3" name='content' readonly >
${board.content }

</textarea>
</div>

<div class="form-group">
<label>Writer</label><input class="form-control" name='writer' value="${board.writer }" readonly >
</div>

<button data-oper='modify'
class="btn btn-default"
>수정 </button>

<button data-oper='list'
class="btn btn-info" > 리스트 </button>

<form id='operForm' action="/board/modify" method="get">
<input type='hidden' id='bno' name='bno' value='${board.bno}'>

</form>




</div>





</div>
</div>
</div>


</body>
</html>