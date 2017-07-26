package com.mendelu.kvetinarstvi
import com.mendelu.data.Kvetina;
import org.codehaus.groovy.syntax.Numbers
import com.mendelu.data.Polozka 
import com.mendelu.data.Objednavka
import com.sun.java.util.jar.pack.ConstantPool.Index;
import com.sun.java.util.jar.pack.Instruction.Switch;

class CustomerController {

    def customer() {		
		def polozky = Polozka.list()
		[polozky:polozky]		
	}
	def polozka = Polozka
	def objedn = Objednavka
	def spocitej(kytka){
		def cislo
		switch(kytka){
			case "ruze":
				cislo = 40
				break
			case "tulipan":
				cislo = 30 
				break
			case "modrin":
				cislo = 35
				break
			default:
				cislo = 20
				break
		}
		cislo 
	}
	def pridani = {
		def number = Numbers.parseInteger(params.pocet)
		if (params.jmeno != "" && params.barva != "" && number != 0){
			def price = spocitej(params.jmeno)
			def pol = new Polozka(jmeno:params.jmeno, barva:params.barva, pocet:number, cena:price)
			pol.save()			
			flash.message = 'Pridana nova polozka'
			redirect(controller : 'customer',action : 'customer')						
		}else{ 			
			redirect(controller : 'customer',action : 'customer')
			flash.message = "Vkladani je spatne"
		}				
		render('done')
		
	}
	def spocitejPolozky(){
		def polozky = Polozka.count()
		int total = 0
		def lastid = Polozka.executeQuery("select min(id) from Polozka")
		lastid = lastid.collect { "$it" }.join( '' ) as int		
		for (int i = lastid;i < polozky+lastid;i++){
			Polozka p = Polozka.get(i)
			total += p.cena * p.pocet
		}
		total
	}
	def objednavka = {
		def pocetPolozek = Polozka.count()
		if(pocetPolozek > 0 ){			
			def date = new Date().format('dd/MM/yyyy')			
			def total = spocitejPolozky()			
			def ob = new Objednavka(datum:date,suma : total).save()			
			Polozka.executeUpdate('delete from Polozka')
			redirect(controller : 'customer',action : 'customer')
			flash.message = "Objednavka hotova"			
		}else{
			flash.message = "Nejsou zadne polozky k objednani"
		}
	}
}
