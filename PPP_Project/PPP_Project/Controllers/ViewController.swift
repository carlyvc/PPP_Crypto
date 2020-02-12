//
//  ViewController.swift
//  PPP_Project
//
//  Created by carlos on 07/06/20.
//  Copyright © 2020 Carlos Velasco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SequentialKeyLabel: UILabel!
    
    @IBAction func GenerateSequentialKey(_ sender: Any) {
    SequentialKeyLabel.text = generateEncodedKey()
    }
    
    
    @IBOutlet weak var OTPassword: UILabel!
    
    
    @IBAction func GenerarTarjeta(_ sender: Any) {
            let key = generaLlave()
            
            OTPassword.text = "\(getOTPasswords(key: key)[0])\t\(getOTPasswords(key:key)[1])\t\(getOTPasswords(key: key)[2])\t\(getOTPasswords(key: key)[3])\t\(getOTPasswords(key: key)[4])\n\(getOTPasswords(key: key)[5])\t\(getOTPasswords(key: key)[6])\t\(getOTPasswords(key: key)[7])\t\(getOTPasswords(key: key)[8])\t\(getOTPasswords(key: key)[9])\n\(getOTPasswords(key: key)[10])\t\(getOTPasswords(key: key)[11])\t\(getOTPasswords(key: key)[12])\t\(getOTPasswords(key: key)[13])\t\(getOTPasswords(key: key)[14])\n\(getOTPasswords(key: key)[15])\t\(getOTPasswords(key: key)[16])\t\(getOTPasswords(key: key)[17])\t\(getOTPasswords(key: key)[18])\t\(getOTPasswords(key: key)[19])\n\(getOTPasswords(key: key)[20])\t\(getOTPasswords(key: key)[21])\t\(getOTPasswords(key: key)[22])\t\(getOTPasswords(key: key)[23])\t\(getOTPasswords(key: key)[24])\n\(getOTPasswords(key: key)[25])\t\(getOTPasswords(key:key)[26])\t\(getOTPasswords(key: key)[27])\t\(getOTPasswords(key: key)[28])\t\(getOTPasswords(key: key)[29])\n"

                
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}
