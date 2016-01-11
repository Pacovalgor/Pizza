//
//  VistaQueso.swift
//  Pizza
//
//  Created by Paco on 10/1/16.
//  Copyright © 2016 Valgor. All rights reserved.
//

import UIKit

class VistaQueso: UIViewController {
    var tamano:String=""
    var masa:String=""
    var queso:String="mozarella"
    
    @IBOutlet weak var segmentoQueso: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tipoQueso(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:queso="mozarella"
        case 1:queso="cheddar"
        case 2:queso="parmesano"
        case 3:queso="sin queso"
        default:queso=""
        }
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let viewSig = segue.destinationViewController as! VistaIngredientes
        viewSig.tamano = tamano
        viewSig.masa = masa
        viewSig.queso = queso
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
