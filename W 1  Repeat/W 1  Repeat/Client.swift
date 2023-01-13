//
//  Client.swift
//  W 1  Repeat
//
//  Created by Рауль on 12/1/23.
//

import Foundation

//Создать класс Клиент с параметрами имя, фамилия, отчество, сумма кредита, срок кредита, сумма погашения, которая изначально равна 0.

class Client {
    var name: String
    var surname: String
    var middleName: String
    var creditAmount: Double
    var creditTerm: Int
    var debt: Double = 0.0

    init(name: String, surname: String, middleName: String, creditAmount: Double, creditTerm: Int) {
        self.name = name
        self.surname = surname
        self.middleName = middleName
        self.creditAmount = creditAmount
        self.creditTerm = creditTerm
    }
}
