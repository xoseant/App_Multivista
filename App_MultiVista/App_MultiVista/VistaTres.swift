//
//  VistaTres.swift
//  App_Pizza
//
//  Created by José Antonio on 27/11/15.
//  Copyright © 2015 José Antonio. All rights reserved.
//

import UIKit

class VistaTres: UIViewController {

    
      // IBOulets..
    @IBOutlet weak var mozarela: UISwitch!
    @IBOutlet weak var chedar: UISwitch!
    @IBOutlet weak var parmesano: UISwitch!
    @IBOutlet weak var sinQueso: UISwitch!
    
      // IBOlets varios..
    @IBOutlet weak var mesa: UILabel!
    @IBOutlet weak var pizza: UILabel!
    @IBOutlet weak var masa: UILabel!
    
      // variables..
    var mesaM: String = ""
    var masaM: String = ""
    var pizzaM: String = ""
    var queso: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    override func viewWillAppear(animated: Bool) {
        mesa.text = String(mesaM)
        pizza.text = String(pizzaM)
        masa.text = String(masaM)
    }
    
    
    @IBAction func quesoMozarela(sender: UISwitch) {
        if (sender.on) {
            queso = "Mozarela"
            sinQueso.enabled = false
        } else {
            queso = ""
            sinQueso.enabled = true
        }
    }
    
    
    @IBAction func quesoChedar(sender: UISwitch) {
        if (sender.on) {
            queso = "Chedar"
            sinQueso.enabled = false
        } else {
            queso = ""
            sinQueso.enabled = true
        }
    }
    
    
    @IBAction func quesoParmesano(sender: UISwitch) {
        if (sender.on) {
            queso = "Parmesano"
            sinQueso.enabled = false
        } else {
            queso = ""
            sinQueso.enabled = true
        }
    }
    
    
    @IBAction func sinQueso(sender: UISwitch) {
        if (sender.on) {
            queso = "Sin Queso"
            mozarela.enabled = false
            chedar.enabled = false
            parmesano.enabled = false
        } else {
            queso = ""
            mozarela.enabled = true
            chedar.enabled = true
            parmesano.enabled = true
            
        }
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let cuatro = segue.destinationViewController as! VistaCuatro
        cuatro.mesaCuatro = mesa.text!
        cuatro.tamañoCuatro = pizza.text!
        cuatro.masaCuatro = masa.text!
        cuatro.quesoCuatro = String(queso)
    }

}
