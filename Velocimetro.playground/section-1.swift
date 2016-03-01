/* Implementación de la clase auto y su atributo velocidad
 * de tipo enumeración.
 */

import UIKit

/*
 * Enumeración con las posibles velocidades del automóvil.
 */
enum Velocidades: Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
    
    func toString() -> String {
        var velocidadEnCadena = ""
        switch self {
            case Apagado:        velocidadEnCadena = "Apagado"
            case VelocidadBaja:  velocidadEnCadena = "Velocidad baja"
            case VelocidadMedia: velocidadEnCadena = "Velocidad media"
            case VelocidadAlta:  velocidadEnCadena = "Velocidad alta"
            default :            velocidadEnCadena = "VELOCIDAD INCORRECTA!"
        }
        return velocidadEnCadena
    }
}

/**
 * La clase auto con un atributo de tipo Velocidades.
 */
class Auto {

    private var velocidad : Velocidades
    
    init () {
        velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
 
        switch velocidad {
            case .Apagado        : velocidad = Velocidades.VelocidadBaja
            case .VelocidadBaja  : velocidad = Velocidades.VelocidadMedia
            case .VelocidadMedia : velocidad = Velocidades.VelocidadAlta
            case .VelocidadAlta  : velocidad = Velocidades.VelocidadMedia
            default: print ("Velocidad incorrecta para cambioDeVelocidad!")
        }
        
        return self.getValue()
    }
    
    func getValue() -> (actual: Int, velocidadEnCadena: String) {
        return (velocidad.rawValue, velocidad.toString())
    }
    
}

// Pruebas
var auto = Auto()
var tupla = auto.getValue()
for i in 1...20 {
    print("\(i). \(tupla.0), \(tupla.1)\n")
    tupla = auto.cambioDeVelocidad()
}
