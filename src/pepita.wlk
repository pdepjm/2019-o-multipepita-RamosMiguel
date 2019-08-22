object pepita {
	var energia = 100

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaEntre(numero,topeInferior,topeSuperor){
		return numero.between(topeInferior,topeSuperor)
	}
	
	method agregarEnergia(valor){
		energia+=valor
	}
	method esMultiploDe(numero,multiplo){
		return numero % multiplo == 0
	}
	
	
	method estaFeliz(){
		return self.estaEntre(energia,500,1000)
	}
	
	method vueloBase(){
		return energia/5
	}
	
	method plusPorEnergia(){
		if( self.estaEntre(energia,300,400)){
			return 10
		}else{
			return 0
		}
	}
	
	method plusPorMultiplo(){
		if(self.esMultiploDe(energia,20)){
			return 15
		}else{
			return 0
		}
	}
	
	method cuantoQuiereVolar(){
		return self.vueloBase()+self.plusPorEnergia()+self.plusPorMultiplo()
	}
	
	
	
	
	
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}