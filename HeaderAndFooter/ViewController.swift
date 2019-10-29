//
//  ViewController.swift
//  HeaderAndFooter
//
//  Created by brq on 30/11/2018.
//  Copyright © 2018 brq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btAsia: UIButton!
    @IBOutlet weak var btBrasil: UIButton!
    var btName: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        presentdata()
    }
    
    func presentdata(){
        btAsia.addTarget(self, action: #selector(click), for: .touchUpInside)
        btBrasil.addTarget(self, action: #selector(click), for: .touchUpInside)
    }
    
    @objc func click(){
        if btAsia.isTouchInside {
            btName = (btAsia.titleLabel?.text)!
            performSegue(withIdentifier: "Segue", sender: self)
        }else if btBrasil.isTouchInside{
            btName = (btBrasil.titleLabel?.text)!
            performSegue(withIdentifier: "Segue", sender: self)
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if segue.identifier == "Segue" {
            if let vc  = segue.destination as? TableViewController{
                vc.text = self.btName
            }
        }
    }
}
