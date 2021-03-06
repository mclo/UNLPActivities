<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<jsp:include  page="/WEB-INF/content/layout/header.jsp" />

<div class="panel panel-default">
<div class="panel-body">
	<s:form action="saveGuest" method="post" theme="bootstrap"
		cssClass="form-horizontal " label="Sign up">
		
		<s:textfield 
			name="user.username" 
			label="User Name" 
			tooltip="Enter your name here" />
			
			<s:password name="user.password"
						label="Password" 
						tooltip="Enter your password here"/>
		
		<s:submit 
			value="Sign up" 
			cssClass="btn btn-primary btn-block" />
			
		
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</s:form>
	</div>
</div>

<jsp:include page="/WEB-INF/content/layout/footer.jsp" />