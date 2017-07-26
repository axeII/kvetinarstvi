package com.mendelu.data

class Polozka {	
	String jmeno
	String barva	
	int pocet
	int cena
	
	Polozka(String jmeno, String barva, int pocet, int cena){
		this.jmeno = jmeno
		this.barva = barva
		this.pocet = pocet
		this.cena = cena
	}		
	
	static constraints = {
        jmeno size: 5..15, blank: false, unique: false
        pocet min:3, blank: false
        barva blank: false
    }
}


