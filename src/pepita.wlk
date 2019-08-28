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
	
	 
	method cuantoQuiereVolar(){
		var total=self.vueloBase()
		if( self.estaEntre(energia,300,400)){
			total+= 10
		}
		if(self.esMultiploDe(energia,20)){
			total+= 15
		}
			return total
		}
	
	method salirAComer(){
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	
	method haceLoQueQuieras(){
		if(self.estaCansada()){
			self.come(alpiste)
		}
		if(self.estaFeliz()){
			self.vola(8)
		}
	}
	
}

object roque{
	
	 method entrenar(pajaro){
	 	pajaro.volar(10)
	 	pajaro.come(alpiste)
	 	pajaro.volar(5)
	 	pajaro.haceLoQueQuieras()
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

object canelones{
	var energia=20
	var salsa=false
	var queso= false
	
	method agregarSalsa(){
		salsa=true
	}
	
	method quitarSalsa(){
		salsa=false
	}
	
	method agregarQueso(){
		queso=true
	}
	
	method quitarQueso(){
		queso=false
	}
	
	method calcularEnergia(){
		var energiaTotal=energia
		if(salsa){
			energiaTotal+=5
		}
		if(queso){
			energiaTotal+=7
		}
		
		return energiaTotal
	}
	
	method energiaQueOtorga(){
		return self.calcularEnergia()
	}
	
}

object mijo {

	var estaMojado=false
	method energiaQueOtorga(){
		if(estaMojado){
			return 15
		}else{
			return 20
		}
	}
	
	method mojarse(){
		estaMojado=true
	}
	
	method secarse(){
		estaMojado=false
	}
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}