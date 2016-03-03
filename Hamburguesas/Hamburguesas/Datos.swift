//
//  Datos.swift
//  Hamburguesas
//
//  Created by Javier Islas García on 02/03/16.
//  Copyright (c) 2016 Javier Islas García. All rights reserved.
//

import Foundation

class ColeccionDePaises {

    let paises = ["Mexico",    "Estados Unidos", "Canadá",      "Colombia", "Alemania",
                  "Argentina", "Australia",      "Austria",     "Bahamas",  "Bélgica",
                  "Belice",    "Bolivia",        "Brasil",      "Bulgaria", "Chile",
                  "China",     "Corea",          "Costa Rica",  "Cuba",     "Dinamarca",
                  "Ecuador",   "Egipto",         "El Salvador", "España",   "Filipinas"]
    
    func obtenPais() -> String {
        let posicion = Int(arc4random_uniform(UInt32(paises.count)))
        //let tamañoArreglo : Int = paises.count
        return paises[posicion]
    }

}

class ColeccionDeHamburguesa {
    
    let hamburguesas = ["Funnel Cake",      "Nacho Burger",       "Pizza Chesse Burger Bacon", "DudeFoods",           "Fergburguer",
                        "Flippin Burguers", "Hella-Peño Burger",  "Diablo Burger",             "The Holyrood",        "Keizo Burger",
                        "Barracuda Burger", "Patty & Bun Burger", "Burguesía",                 "Bill Murray",         "Chimichurri Burger",
                        "Cubana",           "Carbon Burger",      "Korzo Fried Burger",        "Hamburgao Hamburgao", "Latin Macho Burger",
                        "Jalapeño Bacon",   "Green Chile Burger", "Tostón Burger",             "Kuma Burger",         "Astronaunt Burger"]
    
    func obtenHamburguesa() -> String {
        let posicion = Int(arc4random_uniform(UInt32(hamburguesas.count)))
        return hamburguesas[posicion]
    }
    
}