//
//  ViewController.swift
//  proyecto3Parcial
//
//  Created by Alumno on 11/1/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let fecha = Date()
        let calendario = Calendar.current
        let horaTexto = "\(calendario.component(.hour, from:
            fecha;)):\(calendario.component(.minute, from: fecha))"
        
        lblHora.text = horaTexto
    }


}

