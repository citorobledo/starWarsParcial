import planeta.*
class Persona {
	const property edad = 0 
	method potencia() = 20
	method inteligencia() = if(edad.between (20,40)){12} else{8}
	method esDestacado() = edad == 25 or edad == 35
	method ofrecerTributo(unPlaneta){}
	method valor() = self.potencia() + self.inteligencia()

}
class Atleta inherits Persona{
	var property masaMuscular = 4
	var property tecnicasConocidas = 2
	
	override method potencia() = super() + masaMuscular * tecnicasConocidas
	override method esDestacado() = super() or tecnicasConocidas > 5
	method entrenar(cantDias) {masaMuscular +=  cantDias/5}
	method aprenderTecnica() {tecnicasConocidas += 1}
	override method ofrecerTributo(unPlaneta){ unPlaneta.contruirMuralla(2)}
}

class Docente inherits Persona{
	var property cantidadCursos = 0
	
	method agregarCurso(){cantidadCursos += 1}
	override method inteligencia() = super() + cantidadCursos * 2
	override method esDestacado() = cantidadCursos > 3 
	override method ofrecerTributo(unPlaneta){ unPlaneta.fundarMuseo()}
	override method valor() = super() +5
	
	}
	
class Soldados inherits Persona{
	var property coleccionArmas = []
	
	method agregarArma(unArma){
		coleccionArmas.add(unArma)
	}
	override method potencia() = super() + coleccionArmas.sum({arm=>arm.potenciaArma(self)})
	override method ofrecerTributo(unPlaneta){ unPlaneta.contruirMuralla(5)}
	
	
	}
class Pistolete{
	const property largo = 0
	var  property potenciaArma = 0
	
	method potenciaArma(unSoldado) = if(unSoldado.edad() > 30){largo*3} else{largo*2}
}
class Espadon{
	const property peso = 0
	
	method potenciaArma(unSoldado) = if(unSoldado.edad() < 40){peso/2}else{6}	
}