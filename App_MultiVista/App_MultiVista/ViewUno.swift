//
//  ViewUno.swift
//  App_Pizza
//
//  Created by José Antonio on 27/11/15.
//  Copyright © 2015 José Antonio. All rights reserved.
//

import UIKit

class ViewUno: UIViewController {
    
      // IBOulets
    @IBOutlet weak var pequeña: UISwitch!
    @IBOutlet weak var mediana: UISwitch!
    @IBOutlet weak var grande: UISwitch!
    
      // variables
    @IBOutlet weak var mesaActiva: UILabel!
    var mesa: String = ""
    var tipo: String = ""
 
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        mesaActiva.text = String(mesa)
        
    }
    

    @IBAction func tamañoPeq(sender: UISwitch) {
        if (sender.on) {
            tipo = "Pequeña"
            mediana.enabled = false
            grande.enabled = false
        } else {
            tipo = ""
            mediana.enabled = true
            grande.enabled = true
        }
    }
    
    @IBAction func tamañoMediano(sender: UISwitch) {
        if (sender.on) {
            tipo = "Mediana"
            pequeña.enabled = false
            grande.enabled = false
            
        } else {
            tipo = ""
            pequeña.enabled = true
            grande.enabled = true
        }
    }
    
    @IBAction func tamañoGrande(sender: UISwitch) {
        if (sender.on) {
            tipo = "Grande"
            pequeña.enabled = false
            mediana.enabled = false
            
        } else {
            tipo = ""
            pequeña.enabled = true
            mediana.enabled = true
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vDos = segue.destinationViewController as! VistaDos
        vDos.tipoPizza = String(tipo)
        
        let Dos = segue.destinationViewController as! VistaDos
        Dos.mesa = mesaActiva.text!
    
    }

}
