<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
	function check(){
		if(document.del.password.value == ""){
			alert("비밀번호를 입력하십시오!!!");
		}else{
			document.del.submit();
		}
	}
</script>
<%@include file="/WEB-INF/views/layout/header.jsp" %>
<div class="header text-center">
  <div class="container">
    <div class="row">
      <div class="col-lg-9 mx-auto">
        <h1 class="mb-4"> 마이페이지</h1>
        <ul class="list-inline">
         <li class="list-inline-item"><a class="text-default"
						href="${ pageContext.request.contextPath }">홈 &nbsp; &nbsp;
							/</a></li>
          <li class="list-inline-item text-primary">마이페이지</li>
        </ul>
      </div>
    </div>
  </div>
</div>

<div align="center">
	<form action="${ pageContext.request.contextPath }/gosu/delete" method="post" name = "del">
		<table border="1">
			<tr>
				<th>${id }님의 비밀번호 확인</th>
			</tr>
			<tr>
				<td>
					<input type="password" name = "password" placeholder="비밀번호 확인">
				</td>
			</tr>
			<tr>
				<td align="right">
					<input type="button" value="탈퇴" onclick="javascript:check()">
			<c:choose>
				<c:when test="${ !empty glogin}">
					<input type="button" onclick="location.href='${ pageContext.request.contextPath }/gosu/mypage'" value="고수돌아가기">								
				</c:when>
				<c:otherwise>
					<input type="button" onclick="location.href='${ pageContext.request.contextPath }/member/mypage'" value="멤버돌아가기">								
				</c:otherwise>
			</c:choose>	
				</td>
			</tr>
		</table>
	</form>
</div>


<%@include file="/WEB-INF/views/layout/footer.jsp" %>