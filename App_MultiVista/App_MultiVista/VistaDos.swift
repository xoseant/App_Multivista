//
//  VistaDos.swift
//  App_Pizza
//
//  Created by José Antonio on 27/11/15.
//  Copyright © 2015 José Antonio. All rights reserved.
//

import UIKit

class VistaDos: UIViewController {
    
    
      // IBOulets
    @IBOutlet weak var delgada: UISwitch!
    @IBOutlet weak var crujiente: UISwitch!
    @IBOutlet weak var gruesa: UISwitch!
    
      // Variables..
    @IBOutlet weak var pizzaTipo: UILabel!
    @IBOutlet weak var nroMesa: UILabel!
    
      // Otras Variables
    var tipoPizza: String = ""
    var mesa: String = ""
    var masa: String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
       pizzaTipo.text = String(tipoPizza)
       nroMesa.text = String(mesa)
    }
    
    
    @IBAction func masaDelgada(sender: UISwitch) {
        if (sender.on) {
            masa = "Delgada"
            crujiente.enabled = false
            gruesa.enabled = false
        } else {
            masa = ""
            crujiente.enabled = true
            gruesa.enabled = true
        }
    }
    
    
    @IBAction func masaCrujiente(sender: UISwitch) {
        if (sender.on) {
            masa = "Crujiente"
            delgada.enabled = false
            gruesa.enabled = false
        } else {
            masa = ""
            delgada.enabled = true
            gruesa.enabled = true
        }
    }
    
    
    @IBAction func masaGruesa(sender: UISwitch) {
        if (sender.on) {
            masa = "Gruesa"
            crujiente.enabled = false
            delgada.enabled = false
        } else {
            masa = ""
            crujiente.enabled = true
            delgada.enabled = true
        }
    }
    
 
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let tres = segue.destinationViewController as! VistaTres
        tres.mesaM = nroMesa.text!
        tres.pizzaM = pizzaTipo.text!
        tres.masaM = String(masa)
    }

}
