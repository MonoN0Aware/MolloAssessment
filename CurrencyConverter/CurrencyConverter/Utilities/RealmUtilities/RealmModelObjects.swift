//
//  CurrencyObject.swift
//  CurrencyConverter
//
//  Created by Boluwatife Adesina on 10/02/2022.
//

import Foundation
import RealmSwift

class Currency: Object {
     dynamic var currency = List<CurrencyDictionary>()
}

class CurrencyDictionary: Object {
    @objc dynamic var currency: String = ""
    @objc dynamic var rate: Double = 0.0
}
