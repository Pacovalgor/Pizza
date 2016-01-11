//
//  VistaIngredientes.swift
//  Pizza
//
//  Created by Paco on 10/1/16.
//  Copyright © 2016 Valgor. All rights reserved.
//

import UIKit

class VistaIngredientes: UIViewController {
    
    var tamano:String=""
    var masa:String=""
    var queso:String=""
    var listaIngredientes : [String] = ["jamón", "peperoni", "pavo", "salchicha", "aceituna", "cebolla", "pimiento", "piña", "anchoa", "atún"]
    var listaSeleccion : [Bool] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        for _ in 0..<listaIngredientes.count
        {
            listaSeleccion.append(false)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func strListaIngredientes() -> String
    {
        var strListaIng = ""
        for i in 0..<listaIngredientes.count
        {
            if listaSeleccion[i]
            {
                strListaIng += listaIngredientes[i] + "\n"
            }
        }
        if strListaIng == ""
        {
            strListaIng += "sin ingredientes"
        }
        return strListaIng
    }
    
    // MARK: - Navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let viewSig = segue.destinationViewController as! VistaResume
        
        viewSig.tamano = tamano
        viewSig.masa = masa
        viewSig.queso = queso
        viewSig.ingredientes = strListaIngredientes()
        
        if cuentaIngredientes() < 1 || cuentaIngredientes() > 5
        {
            let alerta = UIAlertController(title: "Error", message: "Debe haber entre 1 y 5 ingredientes", preferredStyle: UIAlertControllerStyle.Alert)
            alerta.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: nil))
            
            presentViewController(alerta, animated: true, completion: nil)
        }
    }
    
    
    // MARK: Table View
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return listaIngredientes.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        //let cell = tableView.dequeueReusableCellWithIdentifier("Cell")
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        cell.textLabel!.text = listaIngredientes[indexPath.row]
        if listaSeleccion[indexPath.row]
        {
            cell.accessoryType = UITableViewCellAccessoryType.Checkmark
        }
        else
        {
            cell.accessoryType = UITableViewCellAccessoryType.None
        }
        
        return cell
    }
    
    func cuentaIngredientes() -> Int
    {
        var contIng = 0
        for i in 0..<listaIngredientes.count
        {
            if listaSeleccion[i]
            {
                contIng++
            }
        }
        return contIng
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        listaSeleccion[indexPath.row] = !listaSeleccion[indexPath.row]
        
        if cuentaIngredientes() > 5
        {
            listaSeleccion[indexPath.row] = !listaSeleccion[indexPath.row]
            let alerta = UIAlertController(title: "Error", message: "No puede haber más de 5 ingredientes", preferredStyle: UIAlertControllerStyle.Alert)
            alerta.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: nil))
            
            presentViewController(alerta, animated: true, completion: nil)
        }
        
        tableView.reloadData()
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
