<html>
    <head>
        <title>Customer page</title>
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
        <meta charset="utf-8">
    </head>
    <body>
        <div class="logo">
            	<g:link controller="user" action="domu"><img alt="logo" src="${resource(dir: 'images', file: 'logo.png')}"></g:link>
            </div>
        <div class="page"> 
        <g:if test="${flash.message}">
				<div class="zprava error">	
					${flash.message}
				</div>	
		</g:if>
		<g:if test="${session.user}">
			<div class="adminlog">
					<br />
					Loged as : ${session.user} | <g:link controller="user" action="logout">Logout</g:link> | <g:link controller="user" action="evidenc">Evidence kvetin</g:link>| <g:link controller="user" action="purchase">Evidence objednavek</g:link>
			</div>
		</g:if>
		<g:else>
		<div class="adminlog">
					<br />
				<g:link controller="user" action="evidenc">Evidence kvetin</g:link>	
			</div>
		</g:else>	 
            <div id="bigBox" class="customer">
                <h3>Objednavka</h3>
                <div id="box4" class="lightyellow">
                    <h3>Přidat</h3>
                    <g:form controller="customer" action="pridani">		            
			            <input type="text" name="jmeno" placeholder="Jmeno"/><br/>
			            <select name="barva">
						    <option value="modra">Modra</option>
						    <option value="cervena">Cervena</option>
						    <option value="fialova">Fialova</option>
						    <option value="zluta">Zluta</option>
						</select>			            
			            <input type="number" value=0 name="pocet" placeholder="Počet"/>
			            <input type="submit" value="Pridej"/>
		            </g:form>
                </div>
                <div id="box4" class="lightyellow">
                    <h3>Seznam položek</h3>
                    <g:form controller="customer" action="objednavka">			            
			            <div id="print" class="hei2">
				            <table class="wide">
				            <tr id="gray"><td>Jméno</td><td>Barva</td><td>pocet</td><td>cena</td></tr>
				            <g:each in="${polozky}" var="pol">			            				            	
								<tr><td>${pol.jmeno}</td> <td>${pol.barva}</td><td>${pol.pocet}</td> <td>${pol.cena}</td></tr>
							</g:each>
							</table>
						</div>
			            <input type="submit" value="Objednat" />
		            </g:form>
                </div>
            </div>             
        </div>
        <footer> ALL RIGHTS RESERVED &amp; PEF Mendelu 
            <br> J. Hohn &amp; A. Lerch
        </footer>         
    </body>
</html>
