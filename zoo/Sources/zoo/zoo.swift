final class Zoo {
    private var animals: [Animal] = []
    private var day: Int = 0

    private var bornTotal: Int = 0
    private var diedTotal: Int = 0

    init(animals: [Animal]) {
        self.animals = animals
    }

    func simulate(days: Int) {
        for _ in 1...days {
            simulateDay()
        }
    }

    private func simulateDay() {
        day += 1
        print("=== День \(day) ===")
        print("")

        for animal in animals {
            guard animal.isAlive else {
                continue
            }

            animal.growOlder()
            let randEvent = Int.random(in: 0...100)
            if randEvent < 20 {
                if animal.canReproduce() {
                    let newAnimal = animal.tryReproduce()
                    animals.append(newAnimal)
                    bornTotal += 1
                    print("\(animal.species) \(animal.name) родил нового \(newAnimal.species) \(newAnimal.name)")
                }
            }
            else if randEvent < 60 {
                animal.eat()
            }

            if animal.checkDeath() {
                diedTotal += 1
                animal.die()
            }
            print("")

        }


        animals.removeAll { !$0.isAlive }


        print("На конец дня \(day) в зоопарке \(animals.count) животных, родилось \(bornTotal), умерло \(diedTotal)")
        print("")
    }

}