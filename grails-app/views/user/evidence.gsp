<html>
    <head>
        <title>Evidence page</title>
       <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
        <meta charset="utf-8">
    </head>
    <body>
        <div class="logo">
            	<g:link controller="user" action="domu"><img alt="logo" src="${resource(dir: 'images', file: 'logo.png')}"></g:link>
            </div>
        <div class="page"> 
        <g:if test="${flash.message}">
			<div class="zprava">	
				${flash.message}
			</div>	
		</g:if>
		<g:if test="${session.user}">
			<div class="adminlog">
					<br />
					Loged as : ${session.user} | <g:link controller="user" action="logout">Logout</g:link> <g:link controller="user" action="purchase">Evidence objednavek</g:link>
			</div> 
		</g:if>	 
            <div id="bigBox2" class="evidenc">
                <h3>Evidence kvetin</h3>
				<div id="box5" class="pink">
					<h3>Seznam kvetin v systemu</h3>
					<div id="print" class="hei3">
						<table class="wide">
				            <tr id="gray"><td>Id</td><td>Jméno</td><td>Barva</td><td>cena</td></tr>
				            <g:each in="${kvetiny}" var="k" status="i">			            				            	
								<tr><td>${i+1}</td><td>${k.jmeno}</td> <td>${k.barva}</td><td>${k.cena}</td></tr>
							</g:each>
						</table>
					</div>
                </div>                 
            </div>             
        </div>
        <footer> ALL RIGHTS RESERVED &amp; PEF Mendelu 
            <br> J. Hohn &amp; A. Lerch
        </footer>         
    </body>
</html>
