//
//  ViewController.swift
//  App_MultiVista
//
//  Created by José Antonio on 3/12/15.
//  Copyright © 2015 José Antonio. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    
      // variables
    var nroMesaPedido: String?
    var pulsado: Int = 0
    
      // IBOulets...
    @IBOutlet weak var mesaUno: UIButton!
    @IBOutlet weak var mesaDos: UIButton!
    @IBOutlet weak var mesaTres: UIButton!
    @IBOutlet weak var mesaCuatro: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        //navigationController?.navigationBarHidden = true
        //navigationController?.navigationItem.backBarButtonItem?.enabled = true
        
    }
    
    
      // Para saber que Nro. de mesa
    @IBAction func nroMesa(sender: AnyObject) {
        if (sender.tag == 1) {
            pulsado = 1
            nroMesaPedido = "Mesa 1"
        } else if (sender.tag == 2) {
             pulsado = 2
            nroMesaPedido = "Mesa 2"
        } else if (sender.tag == 3) {
             pulsado = 3
            nroMesaPedido = "Mesa 3"
        } else if (sender.tag == 4) {
             pulsado = 4
            nroMesaPedido = "Mesa 4"
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vistaUno = segue.destinationViewController as! ViewUno
        vistaUno.mesa = nroMesaPedido!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func atraz(sender: UIStoryboardSegue) {
        
        if (pulsado == 1) {
            mesaUno.enabled = false
            mesaTres.enabled = true
        } else if (pulsado == 2) {
            mesaDos.enabled = false
            mesaCuatro.enabled = true
        } else if (pulsado == 3) {
            mesaTres.enabled = false
            mesaUno.enabled = true
        } else if (pulsado == 4) {
            mesaCuatro.enabled = false
            mesaDos.enabled = true
        }
    
    }
   
}


