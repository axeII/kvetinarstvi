<html>
    <head>
        <title>Importer page</title>
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
					Loged as : ${session.user} | <g:link controller="user" action="logout">Logout</g:link> | <g:link controller="user" action="evidenc">Evidence kvetin</g:link>| <g:link controller="user" action="purchase">Evidence objednavek</g:link>
			</div>	
		</g:if>	 
            <div id="bigBox" class="import">
                <h3>Dovozce</h3>
                <div id="box4" class="lightred">
                   <h3>Přidat</h3>
                    <g:form controller="importer" action="pridat">
			            <input class="hafl" type="text" name="jmeno" placeholder="Jmeno"/><br/>
			            <input class="hafl" type="text" name="barva" placeholder="Barva"/><br/>
			            <input class="hafl" type="number" name="cena" value=0 placeholder="Cena"/><br/>
			         	<input class="impotsub" type="submit" value="Přidej"/>			         
		        	</g:form>			            				 
		        </div>
				<div id="box4" class="lightred">
					<h3>Seznam kvetin v systemu</h3>
					<div id="print" class="hei">
						<table class="wide">
				            <tr id="gray"><td>Jméno</td><td>Barva</td><td>cena</td></tr>
				            <g:each in="${kvetiny}" var="k">			            				            	
								<tr><td>${k.jmeno}</td> <td>${k.barva}</td><td>${k.cena}</td></tr>
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
