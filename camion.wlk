import cosas.*

object camion {
	const property cosas = []
		
	method cargar(unaCosa) {
		self.validarSiPuedeCargar(unaCosa)
		cosas.add(unaCosa)
	}

	method validarSiPuedeCargar(unaCosa) {
		if (cosas.contains(unaCosa)) {
			self.error("Ya esta en el camion")
		}
	}

	method descargar(unaCosa) {
		self.validarSiPuedeDescargar(unaCosa)
		cosas.remove(unaCosa)
	}

	method validarSiPuedeDescargar(unaCosa) {
		if (!cosas.contains(unaCosa)) {
			self.error("No esta en el camion")
		} 
	}

	method pesoTotal() = cosas.map({cosa => cosa.peso()}).sum()

	method pesoTotalEsPar() = self.pesoTotal() % 2 == 0

	method hayAlgunoQuePesa(peso) {
    return cosas.any{cosa => cosa.peso() == peso}
  	}
}
