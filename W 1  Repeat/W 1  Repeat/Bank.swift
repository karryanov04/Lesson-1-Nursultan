//
//  Bank.swift
//  W 1  Repeat
//
//  Created by Рауль on 12/1/23.
//

import Foundation
//Создать класс Банк с параметрами клиенты. Создать внутри класса Банк функцию, рассчитывающая сумму кредита с процентами. Если клиент берет кредит на 1 год, то надбавка 30% (например: хочет взять 100000, то в итоге должен погасить 130000), на 2 - 15%, на 3 - 10%. Функция должна заполнять параметр сумма погашения для каждого клиента и распечататывать всю информацию клиента. Добавить вторую функцию, которая принимает одного клиента в аргументе, эта функция должна достать информацию по сумме погашения и распечатать график погашений по месяцам.

class Bank {
    var clients: [Client]

    init(clients: [Client]) {
        self.clients = clients
    }

    func calculateDebt() {
        for client in clients {
            let percent = calculateInterestRate(creditTerm: client.creditTerm)
            client.debt = client.creditAmount + client.creditAmount * percent
            print("Клиент: \(client.name) \(client.surname) \(client.middleName), сумма кредита: \(client.creditAmount), срок кредита: \(client.creditTerm) лет, долг: \(client.debt)")
        }
    }

    func printRepaymentSchedule(client: Client) {
        let monthlyPayment = client.debt / Double(client.creditTerm * 12)
        print("График погашения для клиента \(client.name) \(client.surname) \(client.middleName):")
        for i in 1...client.creditTerm*12 {
            print("Месяц \(i): \(monthlyPayment)")
        }
    }

    private func calculateInterestRate(creditTerm: Int) -> Double {
        switch creditTerm {
        case 1:
            return 0.3
        case 2:
            return 0.15
        case 3:
            return 0.1
        default:
            return 0.0
        }
    }
}
