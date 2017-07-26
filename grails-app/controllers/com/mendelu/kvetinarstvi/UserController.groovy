package com.mendelu.kvetinarstvi
import com.mendelu.data.Kvetina
import com.mendelu.data.Objednavka
import org.codehaus.groovy.syntax.Numbers

class UserController {

    def admin() {
		if (session.user != "admin"){
			response.sendError(404)
			//redirect(uri:'/')
		}
	}
	def evidence () {
		def kvetiny = Kvetina.list()
		[kvetiny:kvetiny]
	}
	def purchases(){
		if (session.user != "admin"){
			response.sendError(404)
			}
		def objednavky = Objednavka.list()
		[objednavky:objednavky]
	}
	def purchase = {
		redirect(controller: 'user',action : 'purchases')
	}
	def evidenc = {
		redirect(controller: 'user',action : 'evidence')
	}
	def kvet = Kvetina
	def login = {
		if(params.username == "admin" && params.password == "pass"){
			flash.message = "Prihlaseni se podarilo"
			session.user = "admin"
			redirect(controller: 'user',action : 'admin')
		}else{
				flash.message = "Prihlaseni se nezdarilo"
				redirect(uri:'/')
			}		
	}
	def logout = {
		session.user = null
		redirect(uri:'/')
	}
	def pridat = {
		redirect (controller : 'importer',action : 'importer')
	}
	def objednat = {
		redirect (controller : 'customer',action : 'customer')
	}
	def domu = {
		redirect(uri:'/')
	}
	def sprav = {
		redirect(controller: 'user',action : 'admin')
	}
	def add = {
		def number = Numbers.parseInteger(params.cena)
		if (params.jmeno != "" && params.barva != "" && number != 0 && session.user ==  "admin" ){				
			Kvetina k = new Kvetina(cena:number, barva:params.barva,jmeno:params.jmeno)
			k.save()
			flash.message = 'Kvetina pridana'	
			redirect(controller : 'user',action : 'admin')
		}else{ 			
			redirect(controller : 'user',action : 'admin')
			flash.message = "Zvolena akce se nezdarila"
		}
	}
	def testEmpty(parametr){
		parametr != ""
	}	
	def update = {
		def number = Numbers.parseInteger(params.idkvet)
		def number2 = Numbers.parseInteger(params.cena)
		if (number != 0 && number2 != 0 && session.user == "admin"){
			Kvetina kv = Kvetina.get(number)
			//if (testEmpty(params.jmeno)){			
			kv.jmeno = params.jmeno
			//}
			//if (testEmpty(params.barva)){
			kv.barva = params.barva
			//}				
			kv.cena = number2
			kv.save(flush : true)
			flash.message = 'Kvetina upravena '
			redirect(controller : 'user',action : 'admin')
		}else{
			flash.message = 'Dana akce se nezdarila'
			redirect(controller : 'user',action : 'admin')
		}
	}	
	def remove = {
		def number = Numbers.parseInteger(params.specid)
		if (number != 0 && session.user == "admin"){
			def k = Kvetina.get(number)
			k.delete(flush: true)
			flash.message = 'Kvetina smazana'
			redirect(controller : 'user',action : 'admin')
		}else{
			flash.message = 'Pozadovana operace se nezdarila'
			redirect(controller : 'user',action : 'admin')
		}
	}
}
