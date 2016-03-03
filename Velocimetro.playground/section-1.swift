import UIKit

enum Velocidades : Int {
    //En Km por hora
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
    
}

class Auto {
    
    var velocidad : Velocidades
    
    init(){
        velocidad=Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        
        let retorno = (actual:velocidad.rawValue,velocidadEnCadena:String(velocidad))
        
        if(velocidad==Velocidades.VelocidadAlta){
            velocidad=Velocidades.VelocidadMedia
            
        }else if(velocidad==Velocidades.VelocidadMedia){
            velocidad=Velocidades.VelocidadAlta
            
        }else if(velocidad==Velocidades.VelocidadBaja){
            velocidad=Velocidades.VelocidadMedia
            
        }else if(velocidad==Velocidades.Apagado){
            velocidad=Velocidades.VelocidadBaja
        }
        
        return retorno
    }
    
}


var auto=Auto()

for i in 1...20{
    var (actual,descripcion) =  auto.cambioDeVelocidad()
    print("\t\t  \(actual)\t \(descripcion) ")
}

