//
//  VistaIngredientes.swift
//  PizzaIphone
//
//  Created by Dgarciar on 11/10/15.
//  Copyright © 2015 Dgarciar. All rights reserved.
//

import UIKit

class VistaIngredientes: UIViewController {

    var seleccionados: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.sJamon.on = AppDelegate.jamon
        self.sPepperoni.on = AppDelegate.pepperoni
        self.sPavo.on = AppDelegate.pavo
        self.sSalchicha.on = AppDelegate.salchicha
        self.sAceituna.on = AppDelegate.aceituna
        self.sCebolla.on = AppDelegate.cebolla
        self.sPimiento.on = AppDelegate.pimiento
        self.sPiña.on = AppDelegate.piña
        self.sAnchoa.on = AppDelegate.anchoa
        self.sCiruela.on = AppDelegate.ciruela

        btnConfirmar.enabled = false
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var btnConfirmar: UIButton!
    
    @IBOutlet weak var lblMensaje: UILabel!
    
    
    @IBOutlet weak var sJamon: UISwitch!
    
    @IBOutlet weak var sPepperoni: UISwitch!
    
    @IBOutlet weak var sPavo: UISwitch!
    
    @IBOutlet weak var sSalchicha: UISwitch!
    
    @IBOutlet weak var sAceituna: UISwitch!
    
    @IBOutlet weak var sCebolla: UISwitch!
    
    @IBOutlet weak var sPimiento: UISwitch!
    
    @IBOutlet weak var sPiña: UISwitch!
    
    @IBOutlet weak var sAnchoa: UISwitch!
    
    @IBOutlet weak var sCiruela: UISwitch!
    
    
    
    @IBAction func swJamon(sender: UISwitch) {
        
        AppDelegate.jamon = sender.on
        
        AppDelegate.jamon = inhabilitarCompra(sender.on)
        self.sJamon.on = AppDelegate.jamon
        
    }

  
    @IBAction func swPepperoni(sender: UISwitch) {
        
        AppDelegate.pepperoni = sender.on
        
        AppDelegate.pepperoni = inhabilitarCompra(sender.on)
        self.sPepperoni.on = AppDelegate.pepperoni

    }
    
    @IBAction func swPavo(sender: UISwitch) {
        
        AppDelegate.pavo = sender.on

        AppDelegate.pavo = inhabilitarCompra(sender.on)
        self.sPavo.on = AppDelegate.pavo

    }
    
    @IBAction func swSalchicha(sender: UISwitch) {
        
        AppDelegate.salchicha = sender.on
        
        AppDelegate.salchicha = inhabilitarCompra(sender.on)
        self.sSalchicha.on = AppDelegate.salchicha
    }
    
    @IBAction func swAceituna(sender: UISwitch) {
        
        AppDelegate.aceituna = sender.on
        
        AppDelegate.aceituna = inhabilitarCompra(sender.on)
        self.sAceituna.on = AppDelegate.aceituna
    }
    
    @IBAction func swCebolla(sender: UISwitch) {
        
        AppDelegate.cebolla = sender.on

        print(AppDelegate.cebolla)
        
        AppDelegate.cebolla = inhabilitarCompra(sender.on)
        self.sCebolla.on = AppDelegate.cebolla
    }
    
    @IBAction func swPimiento(sender: UISwitch) {
        
        AppDelegate.pimiento = sender.on

        AppDelegate.pimiento = inhabilitarCompra(sender.on)
        self.sPimiento.on = AppDelegate.pimiento
    }
    
    @IBAction func swPiña(sender: UISwitch) {
        
        AppDelegate.piña = sender.on

        AppDelegate.piña = inhabilitarCompra(sender.on)
        self.sPiña.on = AppDelegate.piña
    }
        
    @IBAction func swAnchoa(sender: UISwitch) {
        
        AppDelegate.anchoa = sender.on
        
        AppDelegate.anchoa = inhabilitarCompra(sender.on)
        self.sAnchoa.on = AppDelegate.anchoa

    }
    
    @IBAction func swCiruela(sender: UISwitch) {
        
        AppDelegate.ciruela = sender.on
        
        AppDelegate.ciruela = inhabilitarCompra(sender.on)
        self.sCiruela.on = AppDelegate.ciruela
        
        /*
        if sender.on{
            AppDelegate.pepperoni = true
        } else
        {
            AppDelegate.pepperoni = false
        }
        */
    }
    
    func inhabilitarCompra(activar: Bool) -> Bool{
    
        var valor: Bool = false
        
        if activar == false
        {
            valor = false
            
            contarSeleccionados()
            
            self.lblMensaje.text = ""
        }
        else
        {
            if contarSeleccionados() > 5
            {
                self.lblMensaje.text = "Superaste el numero de ingredientes permitidos !"
                //btnConfirmar.enabled = false
                valor = false
            }
            else
            {
                self.lblMensaje.text = ""
                //btnConfirmar.enabled = true
                valor = true
            }

        }
        
        return valor
    }
    
    func contarSeleccionados() -> Int{
        
        seleccionados = 0
        
        if(AppDelegate.jamon){
            seleccionados++
        }
        if(AppDelegate.pepperoni){
            seleccionados++
        }
        if(AppDelegate.pavo){
            seleccionados++
        }
        if(AppDelegate.salchicha){
            seleccionados++
        }
        if(AppDelegate.aceituna){
            seleccionados++
        }
        if(AppDelegate.cebolla){
            seleccionados++
        }
        if(AppDelegate.pimiento){
            seleccionados++
        }
        if(AppDelegate.piña){
            seleccionados++
        }
        if(AppDelegate.anchoa){
            seleccionados++
        }
        if(AppDelegate.ciruela){
            seleccionados++
        }
        
        if seleccionados > 0 {
            btnConfirmar.enabled = true
        }else {
            btnConfirmar.enabled = false
        }
        
        return seleccionados
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
