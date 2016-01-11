//
//  vistaMasa.swift
//  Pizza
//
//  Created by Paco on 10/1/16.
//  Copyright © 2016 Valgor. All rights reserved.
//

import UIKit

class vistaMasa: UIViewController {
    var tamano:String=""
    var masa:String="fina"
    
    @IBOutlet weak var segmentoMasa: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tipoMasa(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0: masa = "fina"
        case 1: masa = "crujiente"
        case 2: masa = "gruesa"
        default: masa = ""
        }
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let viewSig = segue.destinationViewController as! VistaQueso
        viewSig.tamano = tamano
        viewSig.masa = masa
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
