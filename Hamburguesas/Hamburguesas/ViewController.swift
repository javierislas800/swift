//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Javier Islas García on 02/03/16.
//  Copyright (c) 2016 Javier Islas García. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesa()
    
    
    @IBOutlet weak var etiquetaPais: UILabel!
    
    @IBOutlet weak var etiquetaHamburguesa: UILabel!
    
    @IBAction func cambiarEtiquetas(sender: AnyObject) {
        etiquetaPais.text = paises.obtenPais()
        etiquetaHamburguesa.text = hamburguesas.obtenHamburguesa()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

