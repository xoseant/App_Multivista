//
//  ViewCinco.swift
//  App_Pizza
//
//  Created by José Antonio on 29/11/15.
//  Copyright © 2015 José Antonio. All rights reserved.
//

import UIKit

class ViewCinco: UIViewController {

      // IBOulets Salida
    @IBOutlet weak var mesa: UILabel!
    @IBOutlet weak var tamaño: UILabel!
    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var queso: UILabel!
    @IBOutlet weak var ingre: UITextView!
    
    
      // Variables
    var mesaCinco: String = ""
    var tamañoCinco: String = ""
    var masaCinco: String = ""
    var quesoCinco: String = ""
    var ingredientesCinco: String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewWillAppear(animated: Bool) {
        mesa.text = String(mesaCinco)
        tamaño.text = String(tamañoCinco)
        masa.text = String(masaCinco)
        queso.text = String(quesoCinco)
        ingre.text = String(ingredientesCinco)
        
    }

}
