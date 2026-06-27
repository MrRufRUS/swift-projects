// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

let initialAnimals: [Animal] = [
    Cheetah(name: "Молния Маквин", age: 2),
    Jaguar(name: "Мой волшебный нектар", age: 0),
    Leopard(name: "Лео", age: 4),
    Lion(name: "Прав", age: 5),
    MountainLion(name: "Плоский Прав", age: 11),
    Panther(name: "Танк", age: 3),
    Puma(name: "Рита", age: 2),
    SnowLeopard(name: "Барсеныш", age: 1),
    Tiger(name: "Полосатик", age: 2),
]

let simulation = Zoo(animals: initialAnimals)
simulation.simulate(days: 5)