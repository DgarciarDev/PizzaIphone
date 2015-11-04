//
//  VistaTamanoViewController.swift
//  PizzaIphone
//
//  Created by Dgarciar on 11/10/15.
//  Copyright © 2015 Dgarciar. All rights reserved.
//

import UIKit

class VistaTamanoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.verificar(AppDelegate.tamano)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var btnChica: UILabel!
    
    @IBOutlet weak var lblMediana: UILabel!
    
    @IBOutlet weak var lblGrande: UILabel!
    
    @IBOutlet weak var lblTamano: UILabel!
    
    @IBAction func sldTamano(sender: UISlider) {
        
        self.verificar(Int(sender.value))
        
    }

    func verificar(valorSlide: Int){

        if(valorSlide == 0){
            lblTamano.text = btnChica.text
        }else if(valorSlide == 1){
            lblTamano.text = lblMediana.text
        }else if (valorSlide == 2){
            lblTamano.text = lblGrande.text
        } else {
            lblTamano.text = ""
        }
        
        AppDelegate.tamano = valorSlide
        
        
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
