//
//  ViewController.swift
//  MasFeliz
//
//  Created by Javier Islas García on 01/03/16.
//  Copyright (c) 2016 Javier Islas García. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensajePositivo: UILabel!
    
    let colores = Colores()
    let frases = Datos()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dameUnMensajePositivo() {
        mensajePositivo.text = frases.regresaFraseFeliz()
        let colorAleatorio = colores.regresaColorAleatorio()
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
    }

}

