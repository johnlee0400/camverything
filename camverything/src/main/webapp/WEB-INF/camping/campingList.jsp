<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript">
	doNm = "${doNm}"
	$(document).ready(function() {
		$("#doNm").val(doNm).attr("selected","selected");
		$("#doNm").change(function() {
			location.href="/camp/camping/list.do?doNm="+encodeURI($(this).val())
		});
	});
</script>
<style type="text/css">

.glyphicon { margin-right:5px; }
.thumbnail
{
    margin-bottom: 20px;
    padding: 0px;
    -webkit-border-radius: 0px;
    -moz-border-radius: 0px;
    border-radius: 0px;
}

.item.list-group-item
{
    float: none;
    width: 100%;
    background-color: #fff;
    margin-bottom: 10px;
}
.item.list-group-item:nth-of-type(odd):hover,.item.list-group-item:hover
{
    background: #428bca;
}

.item.list-group-item .list-group-image
{
    margin-right: 10px;
}
.item.list-group-item .thumbnail
{
    margin-bottom: 0px;
}
.item.list-group-item .caption
{
    padding: 9px 9px 0px 9px;
}
.item.list-group-item:nth-of-type(odd)
{
    background: #eeeeee;
}

.item.list-group-item:before, .item.list-group-item:after
{
    display: table;
    content: " ";
}

.item.list-group-item img
{
    float: left;
    margin-right: 20px;
    width: 25%;
	height: 25%;
}
.item.list-group-item:after
{
    clear: both;
}
.list-group-item-text
{
    margin: 0 0 11px;
}
.container{
	margin-top: 15px;
}
form{
	margin-bottom: 15px;
}
#category{
	float: right;
	margin-top: 50px;
}

#imageeee{
	padding-top:200px;
	padding-bottom:150px;
	background-image: url("/camp/images/campList_banner.jpg");
}

#doNm{
	float: right;
	margin-top: 50px;
}
</style>
</head>
<body>

<div id="imageeee">
	<div class="container">
		<div class="text-center">
               
                    <h1 class="section-heading text-uppercase">?????????</h1>
                    <h3 class="section-subheading text-muted">????????? ????????? ???????????????.</h3>
                    
                </div>
	</div>
</div>
<div class="container">
			
						<form action="">
						<select name="doNm" id="doNm">
								<option value="1" selected="selected">??????</option>
								<option value="??????">??????</option>
								<option value="?????????">?????????</option>
								<option value="?????????">?????????</option>
								<option value="????????????">????????????</option>
								<option value="????????????">????????????</option>
								<option value="????????????">????????????</option>
								<option value="????????????">????????????</option>
								<option value="????????????">????????????</option>
								<option value="????????????">????????????</option>
								<option value="?????????">?????????</option>
						</select>
						</form>
						</div>
					<section class="page-section bg-light" id="portfolio">
	
			
            <div class="container">
<!-- 					<div class="text-center"> -->
               
<!--                     <h2 class="section-heading text-uppercase">?????????</h2> -->
<!--                     <h3 class="section-subheading text-muted">????????? ????????? ???????????????.</h3> -->
                    
<!--                 </div> -->
    <div id="products" class="row list-group">
     <c:forEach var="campingList" items="${campingList }">
        <div class="item  col-xs-4 col-lg-4 list-group-item">
            <div class="thumbnail">
         		<img src="${campingList.firstImageUrl }"> 
                <div class="caption">
                    <h5 class="group inner list-group-item-heading">
                       ${campingList.facltNm }</h5>
                       <hr/>
                    <p class="group inner list-group-item-text">
                       ${campingList.lineIntro }</p>
                      ?????? : ${campingList.lctCl }<br/>
                       <p>?????? : ${campingList.doNm }</p>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                           <button type="button" class="btn btn-success" onclick="location.href='/camp/res/camp_read?facltNm=${campingList.facltNm }'">??????/????????????</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        </c:forEach>
    </div>
</div>
</section>

</body>
</html>