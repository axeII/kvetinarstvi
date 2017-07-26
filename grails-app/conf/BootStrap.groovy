import com.mendelu.data.Kvetina
import com.mendelu.data.Objednavka
import com.mendelu.data.Polozka

class BootStrap {

    def init = { servletContext ->
		new Kvetina(cena : 35,barva: "ruzova",jmeno : "tulipan").save()
		new Kvetina(cena : 70,barva: "zluta",jmeno : "tulipan").save()
		new Kvetina(cena : 50,barva: "bila",jmeno : "sasanka").save()
		new Kvetina(cena : 50,barva: "cervena",jmeno : "modrin").save()
		new Kvetina(cena : 70,barva: "modra",jmeno : "snezenka").save()
		new Kvetina(cena : 50,barva: "bila",jmeno : "levandule").save()
		new Kvetina(cena : 35,barva: "modra",jmeno : "sasanka").save()
		new Kvetina(cena : 80,barva: "modra",jmeno : "rozarie").save()
		new Kvetina(cena : 80,barva: "bila",jmeno : "konvalinka").save()
		new Kvetina(cena : 80,barva: "fialova",jmeno : "snezenka").save()
		new Kvetina(cena : 70,barva: "cervena",jmeno : "modrin").save()
		new Kvetina(cena : 20,barva: "fialova",jmeno : "tulipan").save()
		new Kvetina(cena : 50,barva: "bila",jmeno : "sasanka").save()
		new Kvetina(cena : 50,barva: "bila",jmeno : "ruze").save()
		new Kvetina(cena : 80,barva: "zluta",jmeno : "modrin").save()
		new Kvetina(cena : 70,barva: "cervena",jmeno : "levandule").save()
		new Kvetina(cena : 70,barva: "bila",jmeno : "modrin").save()
		new Kvetina(cena : 70,barva: "ruzova",jmeno : "konvalinka").save()
		new Kvetina(cena : 35,barva: "bila",jmeno : "tulipan").save()
		new Kvetina(cena : 50,barva: "zluta",jmeno : "sasanka").save()
		new Kvetina(cena : 80,barva: "fialova",jmeno : "tulipan").save()
		new Kvetina(cena : 20,barva: "cervena",jmeno : "ruze").save()
		new Polozka(jmeno : "ruze",barva : "fialova",pocet : 9,cena : 20).save()
		new Polozka(jmeno : "levandule",barva : "modra",pocet : 8,cena : 80).save()
		new Polozka(jmeno : "konvalinka",barva : "zluta",pocet : 8,cena : 35).save()
		new Polozka(jmeno : "levandule",barva : "ruzova",pocet : 6,cena : 50).save()
		new Polozka(jmeno : "konvalinka",barva : "ruzova",pocet : 3,cena : 80).save()
		new Polozka(jmeno : "ruze",barva : "ruzova",pocet : 7,cena : 20).save()
		new Polozka(jmeno : "rozarie",barva : "ruzova",pocet : 9,cena : 70).save()
		new Polozka(jmeno : "rozarie",barva : "fialova",pocet : 0,cena : 50).save()
		new Objednavka(datum : "10/1/2016",suma : 1240).save()
		new Objednavka(datum : "18/1/2016",suma : 180).save()
		new Objednavka(datum : "22/1/2016",suma : 250).save()
	}
	
    def destroy = {
    }
}
