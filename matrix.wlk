object neo {
  var energia = 100
  method salta() {
    energia = energia / 2
  }
  method vitalidad() {
    return energia / 10 
  }
  method esElElegido() = true 
}

object morfeo {
    var vitalidad = 8
    var descansado = true
    method salta() {
        if(descansado == true) {
            descansado = false
        } else {
            descansado = true
        }
    vitalidad = vitalidad - 1
    }
    method vitalidad() = vitalidad 
    method estaDescansado() {
        return descansado
    }
    method esElElegido() = false
}

object trinity {
  const vitalidad = 0
  method santar() = vitalidad
  method vitalidad() = vitalidad
  method esElElegido() = false 
}

object nave {
  var pasajeros = [neo, morfeo, trinity]
  method seVanTodos() = pasajeros.clear()
  method cantidadPasajeros() {
    return pasajeros.size()
  }
  method pasajeroConMayorVitalidad() {
    return pasajeros.max({p => p.vitalidad()})
  }
  method pasajeroConMenorVitalidad() {
    return pasajeros.min({p => p.vitalidad()})
  }
  method estaEquilibrado() {
    return pasajeroConMayorVitalidad().vitalidad() <= pasajeroConMenorVitalidad().vitalidad() * 2
  }
  method elegidoEnLaNave() {
    return pasajeros.esElElegido() = true
  }
  method choca() {
    pasajeros.forEach({p => p.salta()}).seVanTodos()
  }
  method acelera() {
    pasajeros.filter({p => !p.esElElegido()}).forEach({p => p.salta()})
  }
}