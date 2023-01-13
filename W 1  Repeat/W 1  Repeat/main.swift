//
//  main.swift
//  W 1  Repeat
//
//  Created by Рауль on 11/1/23.
//

import Foundation

//Создать класс Клиент с параметрами имя, фамилия, отчество, сумма кредита, срок кредита, сумма погашения, которая изначально равна 0. Создать класс Банк с параметрами клиенты. Создать внутри класса Банк функцию, рассчитывающая сумму кредита с процентами. Если клиент берет кредит на 1 год, то надбавка 30% (например: хочет взять 100000, то в итоге должен погасить 130000), на 2 - 15%, на 3 - 10%. Функция должна заполнять параметр сумма погашения для каждого клиента и распечататывать всю информацию клиента. Добавить вторую функцию, которая принимает одного клиента в аргументе, эта функция должна достать информацию по сумме погашения и распечатать график погашений по месяцам.

let client = Client(name: "Raul", surname: "Karyanov", middleName: "Vasilievich", creditAmount: 1000, creditTerm: 1)
let bank = Bank(clients: [client])

bank.calculateDebt()
bank.printRepaymentSchedule(client: client)

