final class Lion: Animal {

    init(name: String, age: Int = 0) {
        super.init(
            name: name,
            species: "Lion",
            age: age,
            maxAge: 20,
            hunger: 0,
            maxHunger: 10,
            huntingChance: 0.8,
            isAlive: true,
            reproduceChance: 0.4,
            reproductionAge: 4
        )
    }

    override func tryReproduce() -> Lion {
        Lion(name: "LionChild #10.7.\(Lion.id())")
    }

}