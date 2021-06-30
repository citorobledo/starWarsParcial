import habitantes.*

class Planeta {
	const property cantHabitantes =[]
	var property cantMuseos = 0
	var property longitudMuralla = 0
	
	method agregarHabitante(unaPersona){cantHabitantes.add(unaPersona)}
	method delegacionDiplomatica() = cantHabitantes.filter({hab=>hab.esDestacado()})
	method defensaInicial() = cantHabitantes.count({hab=>hab.potencia() > 30})
	method esCulto() = cantMuseos >=2 and cantHabitantes.all({hab=>hab.inteligencia() > 10})
	method potenciaReal() = cantHabitantes.sum({hab=>hab.potencia()})
	method contruirMuralla(cantKilometros){longitudMuralla += cantKilometros}
	method fundarMuseo(){cantMuseos += 1}
	method potenciaAparente() = cantHabitantes.max({hab=>hab.potencia()}).potencia() * cantHabitantes.size()
	method nesecitaReforzarse() = self.potenciaAparente() >= self.potenciaReal()*2
	method recibirTributos() = cantHabitantes.forEach({hab=>hab.ofrecerTributo(self)})
	method habitantesValiosos() = cantHabitantes.filter({hab=>hab.valor() > 40} )
	method apaciguar(unPlaneta)= self.habitantesValiosos().forEach({hab=>hab.ofrecerTributo(unPlaneta)})
}



