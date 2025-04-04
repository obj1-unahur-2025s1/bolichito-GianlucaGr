//colores
object rojo{
  method esFuerte(){return true}
  // o se puede poner esFuerte() = true
}
object verde{
  method esFuerte(){return true}
}

object naranja{
  method esFuerte(){return true}
}
object celeste{
  method esFuerte(){return false}
}
object pardo{
  method esFuerte(){return false}
}

//materiales

object cobre{
  method brilla(){return true}
}

object vidrio{
  method brilla(){return true}
}

object lino{
  method brilla(){return false}
}

object madera{
  method brilla(){return false}
}

object cuero{
  method brilla(){return false}
}

//cosas

object remera{
  method color(){return rojo}
  method peso(){return 800}
  method material(){return lino}
}

object pelota{
  method color(){return pardo}
  method peso(){return 1300}
  method material(){return cuero}
}

object biblioteca{
  method color(){return verde}
  method peso(){return 8000}
  method material(){return madera}
}

object munieco{
  var peso = 0 
  method color(){return celeste}
  method material(){return vidrio}
  method peso(){return peso}
  method peso(unPeso) {peso = unPeso}
}

object placa{
  var color = rojo 
  var peso = 0
  method color(){return color}
  method peso(){return peso}
  method material(){return cobre}
  method varColor(unColor){color = unColor}
  method varPeso(unPeso){peso = unPeso}
}

object arito{
  method color(){return celeste}
  method peso(){return 180}
  method material() {return cobre}
}

object banquito{
  var color = naranja
  method peso(){return 1700}
  method material() {return madera}
  method color(){return color}
  method color(unColor) {color = unColor}
}

object cajita{
  var objetoInterno = arito
  method color(){return rojo}
  method material(){return cobre}
  method peso(){return 400 + objetoInterno.peso()}
  method objetoInterno(unObjeto){objetoInterno = unObjeto}
  method objeto() {return objetoInterno }
  
}