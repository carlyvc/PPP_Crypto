//
//  Tarjetas.swift
//  PPP_Project
//
//  Created by carlos on 07/02/20.
//  Copyright © 2020 Carlos Velasco. All rights reserved.
//

import Foundation
import CryptoKit

var counter128bit: UInt128 = 0
var cardArray = Array(repeating: String(), count: 30)

func getOTPasswords(key: SymmetricKey) -> [String] {
    var OTPassword = ""
    var cardArray = Array(repeating: String(), count: 30)
    
    for i in 0..<30 {
        for _ in 0..<4 {
            let characterIndexStr = String(getCharacterIndex(counter: counter128bit, key: key))
            let characterIndex = Int(characterIndexStr)
            OTPassword = OTPassword + alfabeto[characterIndex!]
        }
        
        cardArray[i].append(OTPassword)
        OTPassword = ""
    }
    counter128bit += 1
    
    return cardArray
}


