//
//  VistaCuatro.swift
//  App_Pizza
//
//  Created by José Antonio on 27/11/15.
//  Copyright © 2015 José Antonio. All rights reserved.
//

import UIKit

class VistaCuatro: UIViewController {
    
      // Variables..
    var copia = [Int:String]() // Diccionario vacio..
    var cadena: String?
    var timer: NSTimer?
    var p: String = ""
    
    
      //IBOulets
    @IBOutlet weak var jamon: UISwitch!
    @IBOutlet weak var peperoni: UISwitch!
    @IBOutlet weak var pavo: UISwitch!
    @IBOutlet weak var salchicha: UISwitch!
    @IBOutlet weak var aceituna: UISwitch!
    @IBOutlet weak var cebolla: UISwitch!
    @IBOutlet weak var tomate: UISwitch!
    @IBOutlet weak var pimiento: UISwitch!
    @IBOutlet weak var anchoas: UISwitch!
    
      // IBOulets Salida
    @IBOutlet weak var mesa: UILabel!
    @IBOutlet weak var tamaño: UILabel!
    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var queso: UILabel!
    
    @IBOutlet weak var activityIndicador: UIActivityIndicatorView!
    
    
    
      // variables
    var mesaCuatro: String = ""
    var tamañoCuatro: String = ""
    var masaCuatro: String = ""
    var quesoCuatro: String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

    override func viewWillAppear(animated: Bool) {
        mesa.text = String(mesaCuatro)
        tamaño.text = String(tamañoCuatro)
        masa.text = String(masaCuatro)
        queso.text = String(quesoCuatro)
    }
    
    
    @IBAction func conJamon(sender: UISwitch) {
        if (sender.on) {
            copia[0] = "Jamon,"
            let fila = Array(copia.values)
            dic_String(fila)
        } else {
            copia.removeValueForKey(0)
            let fila = Array(copia.values)
            dic_String(fila)
        }
    }
    
    
    @IBAction func conPeperoni(sender: UISwitch) {
        if (sender.on) {
            copia[1] = "Peperoni,"
            let fila = Array(copia.values)
            dic_String(fila)
        } else {
            copia.removeValueForKey(1)
            let fila = Array(copia.values)
            dic_String(fila)
        }
    }
    
    
    @IBAction func conPavo(sender: UISwitch) {
        if (sender.on) {
            copia[2] = "Pavo,"
            let fila = Array(copia.values)
            dic_String(fila)
        } else {
            copia.removeValueForKey(2)
            let fila = Array(copia.values)
            dic_String(fila)
        }

    }
    
    
    @IBAction func conSalchicha(sender: UISwitch) {
        if (sender.on) {
            copia[3] = "Salchica,"
            let fila = Array(copia.values)
            dic_String(fila)
        } else {
            copia.removeValueForKey(3)
            let fila = Array(copia.values)
            dic_String(fila)
        }
    }
    
    
    @IBAction func conAceituna(sender: UISwitch) {
        if (sender.on) {
            copia[4] = "Aceitunas,"
            let fila = Array(copia.values)
            dic_String(fila)
        } else {
            copia.removeValueForKey(4)
            let fila = Array(copia.values)
            dic_String(fila)
        }
    }
    
    
    @IBAction func conCebolla(sender: UISwitch) {
        if (sender.on) {
            copia[5] = "Cebolla,"
            let fila = Array(copia.values)
            dic_String(fila)
        } else {
            copia.removeValueForKey(5)
            let fila = Array(copia.values)
            dic_String(fila)
        }
    }
    
    
    @IBAction func conTomate(sender: UISwitch) {
        if (sender.on) {
            copia[6] = "Tomate,"
            let fila = Array(copia.values)
            dic_String(fila)
        } else {
            copia.removeValueForKey(6)
            let fila = Array(copia.values)
            dic_String(fila)
        }
    }
    
    
    @IBAction func conPimiento(sender: UISwitch) {
        if (sender.on) {
            copia[7] = "Pimenton,"
            let fila = Array(copia.values)
            dic_String(fila)
        } else {
            copia.removeValueForKey(7)
            let fila = Array(copia.values)
            dic_String(fila)
        }
    }
    
    
    @IBAction func conAnchoas(sender: UISwitch) {
        if (sender.on) {
            copia[8] = "Anchoas,"
            let fila = Array(copia.values)
            dic_String(fila)
        } else {
            copia.removeValueForKey(8)
            let fila = Array(copia.values)
            dic_String(fila)
        }
    }
    
 
    
    func dic_String(lista: Array<String>) -> String {
        p = ""
        for (var i = 0; i < lista.count; i++) {
            p += lista[i] + " "
        }
        return p
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let cinco = segue.destinationViewController as! ViewCinco
        cinco.mesaCinco = String(mesa.text!)
        cinco.tamañoCinco = String(tamaño.text!)
        cinco.masaCinco = String(masa.text!)
        cinco.quesoCinco = String(queso.text!)
        cinco.ingredientesCinco = p
        
    }

}
