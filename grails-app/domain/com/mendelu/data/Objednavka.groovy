package com.mendelu.data

class Objednavka {	
	String datum
	int suma
	
	static constraints = {		
		datum size: 5..10, blank: false, unique: false
		suma min : 20		
	}
}
