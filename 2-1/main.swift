import Foundation

//1. Создать класс "Машина"(Car) и задать ему свойства
//Создать функцию, которая будет увеличивать мощность авто(тюнинг по всем параметрам)

class Car {
    var brand : String = ""
    var model : String = ""
    var bodyType : String = ""
    var colour : String = ""
    var year : Int = 0
    var power : Int = 0
    
    init(brand: String, model: String, bodyType: String, colour: String, year: Int, power: Int) {
        if brand == "" {
            self.brand = "no info"
        }
        else {
            self.brand = brand
        }
        if model == "" {
            self.model = "no info"
        }
        else {
            self.model = model
        }
        if bodyType == "" {
            self.bodyType = "no info"
        }
        else {
            self.bodyType = bodyType
        }
        if colour == "" {
            self.colour = "no info"
        }
        else {
            self.colour = colour
        }
        self.year = year
        self.power = power
    }
    func addPower (add: Int) {
        self.power += add
    }
    func showInfo () {
        print("brand - \(brand), model - \(model), body type - \(bodyType), colour - \(colour), year - \(year), power - \(power)kw")
    }
}

var car1 = Car(brand: "Honda", model: "X-NV", bodyType: "SUV", colour: "White", year: 2021, power: 120)
var car2 = Car(brand: "Lexus", model: "", bodyType: "SUV", colour: "Black", year: 2005, power: 200)
var car3 = Car(brand: "Mercedes Benz", model: "ML 550", bodyType: "", colour: "Black", year: 2008, power: 250)

car1.showInfo()                 //brand - Honda, model - X-NV, body type - SUV, colour - White, year - 2021, power - 120kw
car1.addPower(add: 20)          //self.power += add
car1.showInfo()                 //power - 140kw
car2.showInfo()                 //model - no info
car3.showInfo()                 //body type - no info

//2. Создать класс "Магазин" и "Продукт" и задать им свойства
//Также создать функцию добавления продукта в магазин и отображения товаров в магазине


class Shop {
    var name: String = ""
    var address: String = ""
    var opening: Int = 0
    var closing: Int = 0
    
    init(name: String, address: String, opening: Int, closing: Int) {
        if name == "" {
            self.name = "no info"
        }
        else {
            self.name = name
        }
        if address == "" {
            self.address = "no info"
        }
        else {
            self.address = address
        }
        self.opening = opening
        self.closing = closing
        }
    }

let shop1 = Shop(name: "Lyubimiy", address: "Almatinskaya 295", opening: 8, closing: 23)
let shop2 = Shop(name: "Grin", address: "Vostochnaya", opening: 9, closing: 22)

var lyubimiy: [[Product]] = []
var grin: [[Product]] = []

class Product {
    var name: String = ""
    var producer: String = ""
    var weight: Int = 0
    var price: Int = 0
    
    init(name: String, producer: String, weight: Int, price: Int) {
        self.name = name
        self.producer = producer
        self.weight = weight
        self.price = price
    }
}

let milk = Product(name: "milk", producer: "umut", weight: 1, price: 45)
let bread = Product(name: "bread", producer: "", weight: 0, price: 30)
let coke = Product(name: "coke", producer: "cocacola", weight: 1, price: 85)

var productsLyubimiy: [Product] = []
var productsGrin: [Product] = []

productsLyubimiy.append(milk)
productsLyubimiy.append(bread)
productsLyubimiy.append(milk)
productsGrin.append(coke)
productsGrin.append(milk)
productsGrin.append(bread)

lyubimiy.append(productsLyubimiy)
grin.append(productsGrin)

dump(grin)
dump(lyubimiy)

//3. Создать класс "Банк" и "Клиент"
//создать функции для:
//1) Подсчета клиентов банка
//2) Отображения баланса по ID или фамилии клиента
//3) Перевода средств от клиента к другому клиенту

class Client {
    var id: Int = 0
    var name: String = ""
    var balance: Int = 0

    init(id: Int, name: String, balance: Int) {
        self.id = id
        self.name = name
        self.balance = balance
    }
}
let clietJibek = Client(id: 01625, name: "Kyzjibek", balance: 15000)
let clientNurs = Client(id: 01823, name: "Nursultan", balance: 26000)


