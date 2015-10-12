//
//  VistaConfirmacion.swift
//  PizzaIphone
//
//  Created by Dgarciar on 11/10/15.
//  Copyright © 2015 Dgarciar. All rights reserved.
//

import UIKit

class VistaConfirmacion: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        lblTamano.text = "Tamaño: " + definirTamano(AppDelegate.tamano)
        lblTipoMasa.text = "Tipo de Masa: " + definirTipoDeMasa(AppDelegate.tipoMasa)
        lblTipoQueso.text = "Tipo de Queso: " + definirTipoDeQueso(AppDelegate.tipoQueso)
        lblIngredientes.text = listarIngredientes()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var lblTamano: UILabel!

    @IBOutlet weak var lblTipoMasa: UILabel!

    @IBOutlet weak var lblTipoQueso: UILabel!
    
    @IBOutlet weak var lblIngredientes: UILabel!
    
    func definirTamano(valor: Int) -> String{
        
        var retorno: String
        
        if(valor == 0){
            retorno = "Chica"
        }else if(valor == 1){
            retorno = "Mediana"
        }else if (valor == 2){
            retorno = "Grande"
        } else {
            retorno = ""
        }
        
        return retorno
    }
    
    func definirTipoDeMasa(valor: Int) -> String{
        
        var retorno: String
        
        if(valor == 0){
            retorno = "Delgada"
        }else if(valor == 1){
            retorno = "Crujiente"
        }else if (valor == 2){
            retorno = "Gruesa"
        } else {
            retorno = ""
        }
        
        return retorno
    }
    
    func definirTipoDeQueso(valor: Int) -> String{
        
        var retorno: String
        
        if(valor == 0){
            retorno = "Mozarela"
        }else if(valor == 1){
            retorno = "Cheddar"
        }else if (valor == 2){
            retorno = "Parmesano"
        } else if(valor == 3){
            retorno = "Sin queso"
        } else {
            retorno = ""
        }
        
        
        return retorno
    }
    
    func listarIngredientes() -> String
    {
        var lista: String = ""
        
        if AppDelegate.jamon{
            lista = lista + "Jamón  "
        }
        if(AppDelegate.pepperoni){
            lista = lista + "Pepperoni  "
        }
        if(AppDelegate.pavo){
            lista = lista + "Pavo  "
        }
        if(AppDelegate.salchicha){
            lista = lista + "Salchicha  "
        }
        if(AppDelegate.aceituna){
            lista = lista + "Aceituna  "
        }
        if(AppDelegate.cebolla){
            lista = lista + "Cebolla  "
        }
        if(AppDelegate.pimiento){
            lista = lista + "Pimiento  "
        }
        if(AppDelegate.piña){
            lista = lista + "Piña  "
        }
        if(AppDelegate.anchoa){
            lista = lista + "Anchoas  "
        }
        if(AppDelegate.ciruela){
            lista = lista + "Ciruelas  "
        }
        
        return lista

        
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
