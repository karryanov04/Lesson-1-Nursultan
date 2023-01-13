import Foundation

// ООП - Объектно ориентированное программирование

//var firstNamePerson1 = "Nurlan"
//var lastNamePerson1 = "Talasbaev"
//var moneyPerson1 = 0
//
//var firstNamePerson2 = "Meder"
//var lastNamePerson2 = "Razakov"
//var moneyPerson2 = 1000
//
//func moneyExchange(amount: Int, total: Int) {
//moneyPerson1 = moneyPerson1 + moneyPerson2 - amount
//moneyPerson2 = moneyPerson2 - amount
//    print("\(firstNamePerson2) перевел \(amount) сом \(firstNamePerson1), у \(firstNamePerson1) \(moneyPerson1) сомов")
//}
//moneyExchange(amount: 500, total: moneyPerson1)

class Human {
    var firstname: String
    var lastname: String
    var money: Int
    init(firstname: String, lastname: String, money: Int) {
        self.firstname = firstname
        self.lastname = lastname
        self.money = money
    }
    func moneyExchange(amount: Int, person1: Human, person2: Human) {
     var personOne = person1
     var personTwo = person2
        personOne.money += amount
        personTwo.money -= amount
        print("\(personTwo.firstname) перевел \(amount) сом \(personOne.firstname), у \(personOne.firstname) \(personOne.money) сомов")
    }
    func showInfo() {
        print("firstName: \(firstname), lastName: \(lastname), money: \(money)")
    }
}

class Bank {
    var clients: [Human] = []
    func moneyExchange(amount: Int, person1: Human, person2: Human) {
        var personOne = person1
        var personTwo = person2
        personOne.money += amount
        personTwo.money -= amount
    }
    func clientsInfo() {
        for i in bank.clients {
            i.showInfo()
        }
    }
}

var person1 = Human(firstname: "Raul", lastname: "Karyanov", money: 1000)
print(person1.money)

var person2 = Human(firstname: "Tima", lastname: "Sydykov", money: 500)
print(person2.money)
    
var bank = Bank()

bank.clients.append(person1)
bank.clients.append(person2)

bank.moneyExchange(amount: 500, person1: person1, person2: person1)

bank.clientsInfo()
