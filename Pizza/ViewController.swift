//
//  ViewController.swift
//  Pizza
//
//  Created by Paco on 10/1/16.
//  Copyright © 2016 Valgor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentoTamano: UISegmentedControl!
    var tamano:String="pequeña"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tipoTamano(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0 : tamano = "pequeña"
        case 1 : tamano = "mediana"
        case 2 : tamano = "grande"
        default : tamano = ""
        }
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let viewsig = segue.destinationViewController as! vistaMasa
        viewsig.tamano = tamano
    }
}

