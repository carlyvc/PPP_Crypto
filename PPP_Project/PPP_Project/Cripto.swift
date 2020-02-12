//
//  Cripto.swift
//  PPP_Project
//
//  Created by carlos on 06/02/20.
//  Copyright © 2020 Carlos Velasco. All rights reserved.
//

import Foundation
import CryptoKit

var alfabeto = [
    "!", "#", "%", "+", "2", "3", "4", "5", "6", "7", "8", "9",
    ":", "=", "?", "@", "A", "B", "C", "D", "E", "F", "G", "H",
    "J", "K", "L", "M", "N", "P", "R", "S", "T", "U", "V", "W",
    "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i",
    "j", "k", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v",
    "w", "x", "y", "z"
]
func generaLlave() -> SymmetricKey {
    let key = SymmetricKey(size: .bits256)

    return key
}
func generateEncodedKey() -> String {
    let valueKey = generaLlave().withUnsafeBytes{
        return Data(Array($0)).base64EncodedString()
    }
    return valueKey
}


func getCharacterIndex(counter: UInt128, key: SymmetricKey) -> UInt128 {
    let dataCounter: Data = withUnsafeBytes(of: counter) { Data($0) }
    let sealedBox = try! AES.GCM.seal(dataCounter, using: key)
    let cipher = sealedBox.ciphertext.withUnsafeBytes {$0.bindMemory(to: UInt128.self)[0]}

    return (cipher%UInt128(alfabeto.count))
}

