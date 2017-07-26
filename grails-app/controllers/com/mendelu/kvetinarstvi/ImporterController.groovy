package com.mendelu.kvetinarstvi
import com.mendelu.data.Kvetina
import com.sun.glass.ui.CommonDialogs.Type
import org.codehaus.groovy.syntax.Numbers

class ImporterController {

    def importer() {
		def kvetiny = Kvetina.list()
		[kvetiny:kvetiny]
	}
	def kvet = Kvetina
		
	def pridat = {
		def number = Numbers.parseInteger(params.cena)
		if (params.jmeno != "" && params.barva != "" && number != 0){
			Kvetina k = new Kvetina(cena:number, barva:params.barva,jmeno:params.jmeno)
			k.save()
			flash.message = 'added new polozka'
			redirect(controller : 'importer',action : 'importer')
		}else  {
			flash.message = 'empty filed'
			redirect(controller : 'importer',action : 'importer')
		}
	}
}
