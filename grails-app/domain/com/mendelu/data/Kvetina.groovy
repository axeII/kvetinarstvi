package com.mendelu.data

import org.apache.ivy.ant.IvyMakePom.Mapping;

import com.sun.javafx.collections.MappingChange;

class Kvetina {		
	int cena
	String barva
	String jmeno
	
	Kvetina(int cena, String barva, String jmeno){		
		this.cena = cena 		
		this.barva = barva
		this.jmeno = jmeno		
	} 
	static mapping = { cache : false }

	static constraints = {
		jmeno size: 4..15, blank: false, unique: false
		cena min:10, blank: false
		barva blank: false
	}
		
}
