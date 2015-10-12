//
//  VistaTipoQueso.swift
//  PizzaIphone
//
//  Created by Dgarciar on 11/10/15.
//  Copyright © 2015 Dgarciar. All rights reserved.
//

import UIKit

class VistaTipoQueso: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.verificar(AppDelegate.tipoQueso)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var lblMozarela: UILabel!
    
    @IBOutlet weak var lblCheddar: UILabel!
    
    @IBOutlet weak var lblParmesano: UILabel!
    
    @IBOutlet weak var lblsinQueso: UILabel!
    
    @IBOutlet weak var lblTipoQueso: UILabel!
    
    
    @IBAction func cambiarTipoQueso(sender: UISlider) {
        
        self.verificar((Int(sender.value)))
                
    }
    
    
    
    
    func verificar(valorSlide: Int){
        
        if(valorSlide == 0){
            lblTipoQueso.text = lblMozarela.text
        }else if(valorSlide == 1){
            lblTipoQueso.text = lblCheddar.text
        }else if (valorSlide == 2){
            lblTipoQueso.text = lblParmesano.text
        } else if (valorSlide == 3){
            lblTipoQueso.text = lblsinQueso.text
        }
        
        AppDelegate.tipoQueso = valorSlide
        
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
