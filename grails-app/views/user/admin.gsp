<!DOCTYPE html>
<html>
    <head>
        <title>Admin page</title>
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
        <meta charset="utf-8">
    </head>
    <body>
        <div class="logo">
            <div class="logo">
            	<g:link controller="user" action="domu"><img alt="logo" src="${resource(dir: 'images', file: 'logo.png')}"></g:link>
            </div>
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
            <div id="bigBox" class="admin">
                <h3>Správce</h3>
                <div id="box2" class="lightblue">
                    <h3>Add</h3>
                    <g:form controller="user" action="add">
			            <input type="text" name="jmeno" placeholder="Jmeno"/><br/>
			            <input type="text" name="barva" placeholder="Barva"/><br/>
			            <input type="number" name="cena" value=0 placeholder="Cena"/><br/>
			            <input type="submit" value="Přidej"/>
		            </g:form>
                </div>                 
                <div id="box2" class="lightblue">
                    <h3>Remove</h3>
                    <g:form controller="user" action="remove">
			            <input type="number" name="specid" value=0 min=0 placeholder="Id"/><br/>
			            <input type="submit" value="Smaž" />
		            </g:form>
                </div>
                <div id="box2" class="lightblue">
                    <h3>Update</h3>
                    <g:form controller="user" action="update">
			            <input type="number" name="idkvet" value=0 min=0 placeholder="Id"/><br/>
			            <input type="text" name="jmeno" placeholder="Jméno"/><br/>
			            <input type="text" name="barva" placeholder="Barva"/><br/>
			            <input type="number" value=0 min=0 name="cena" placeholder="Cena"/><br/>
			            <input type="submit" value="Uprav"/>
		            </g:form>
                </div>
            </div>             
        </div>
        <footer> ALL RIGHTS RESERVED &amp; PEF Mendelu 
            <br> J. Hohn &amp; A. Lerch
        </footer>         
    </body>
</html>
