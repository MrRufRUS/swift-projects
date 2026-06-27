final class Puma: Animal {

    init(name: String, age: Int = 0) {
        super.init(
            name: name,
            species: "Puma",
            age: age,
            maxAge: 15,
            hunger: 0,
            maxHunger: 10,
            huntingChance: 0.7,
            isAlive: true,
            reproduceChance: 0.3,
            reproductionAge: 4
        )
    }

    override func tryReproduce() -> Puma {
        Puma(name: "PumaChild #10.1.\(Puma.id())")
    }

}