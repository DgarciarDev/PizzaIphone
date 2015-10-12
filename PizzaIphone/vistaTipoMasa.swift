//
//  vistaTipoMasa.swift
//  PizzaIphone
//
//  Created by Dgarciar on 11/10/15.
//  Copyright © 2015 Dgarciar. All rights reserved.
//

import UIKit

class vistaTipoMasa: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        self.verificar(AppDelegate.tipoMasa)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var Delgada: UILabel!
    
    @IBOutlet weak var lblCrujiente: UILabel!
    
    @IBOutlet weak var lblGruesa: UILabel!
    
    @IBOutlet weak var lblTipoMasa: UILabel!

    
    @IBAction func cambiarTipoMasa(sender: UISlider) {
        
        self.verificar(Int(sender.value))
        
    }
    
    func verificar(valorSlide: Int){
        
        if(valorSlide == 0){
            lblTipoMasa.text = Delgada.text
        }else if(valorSlide == 1){
            lblTipoMasa.text = lblCrujiente.text
        }else if (valorSlide == 2){
            lblTipoMasa.text = lblGruesa.text
        } else {
            lblTipoMasa.text = ""
        }
        
        AppDelegate.tipoMasa = valorSlide
        
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
