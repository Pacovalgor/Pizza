//
//  VistaResumen.swift
//  Pizza
//
//  Created by Paco on 10/1/16.
//  Copyright © 2016 Valgor. All rights reserved.
//

import UIKit

class VistaResumen: UIViewController {
    
    var tamano : String = "-"
    var masa : String = "-"
    var queso : String = "-"
    var ingredientes : String  = "-"

    @IBOutlet weak var resumenTamano: UILabel!
    @IBOutlet weak var resumenMasa: UILabel!
    @IBOutlet weak var resumenQueso: UILabel!
    @IBOutlet weak var resumenIngredientes: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        resumenTamano.text = String (self.tamano)
        resumenMasa.text = String (self.masa)
        resumenQueso.text = String (self.queso)
        resumenIngredientes.text = ingredientes
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func confirmar(sender: UIButton) {
        let alerta = UIAlertController(title: "Pedido", message: "Pedido realizado", preferredStyle: UIAlertControllerStyle.Alert)
        alerta.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: nil))
        
        presentViewController(alerta, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
