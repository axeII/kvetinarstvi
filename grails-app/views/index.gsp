<html>
	<head>
	<title>Aristoteles kvetinarstvi</title>
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">	
	<meta charset="utf-8">
	</head>
	<body>
		<div class="logo">
            	<img alt="logo" src="${resource(dir: 'images', file: 'logo.png')}">
            </div>
		<div class="page">				
				<g:if test="${flash.message}">
				<div class="zprava">	
					${flash.message}
				</div>	
				</g:if>											
				<div class="loger">
				<g:if test="${session.user}">
			<div class="adminlog">
					<br />
					Loged as : ${session.user} | <g:link controller="user" action="logout">Logout</g:link> | <g:link controller="user" action="evidenc">Evidence kvetin</g:link>| <g:link controller="user" action="purchase">Evidence objednavek</g:link>
			</div>	
		</g:if>	 
				<g:formatDate format="yyyy-MM-dd" date="${date}"/>				
				</div>			
				<div id="box" class="admin">
				<h3>Správce</h3>
				  <g:if test="${session.user}">
					<g:link controller="user" action="sprav">
						<div id="move" class="link">Admin</div>
					</g:link>
		          </g:if>
		          <g:else>
		          	<g:form controller="user" action="login">
		          	  <div class="loggin">				          
			            <input type="text" name="username" placeholder="User name"/><%-- <g:textField name="firstName"/> --%><br/>			            
			            <input type="password" name="password" placeholder="Password"/><%-- <g:passwordField name="myPasswordField" value="${myPassword}" /> --%>
			            <input type="submit" value="Login" /><%-- <g:actionSubmit value="Login"/>--%>
			           </div> 
		        	</g:form>		          	
		          </g:else>	
				</div>
				<div id="box" class="import">
					<h3>Dodavatel</h3>
					<g:link controller="user" action="pridat">
						<div id="move" class="link">Přidat</div>
					</g:link>
				</div>
				<div id="box" class="customer">
					<h3>Zákazník</h3>
					<g:link controller="user" action="objednat">
						<div id="move" class="link">Objednat</div>
					</g:link>
				</div>
		</div>
		<footer> ALL RIGHTS RESERVED &amp; PEF Mendelu <br> J. Hohn &amp; A. Lerch</footer>
		<%-- <g:form controller="test">
    		<g:actionSubmit value="Submit" action="success"/>
		</g:form> --%>
	</body>
</html>
