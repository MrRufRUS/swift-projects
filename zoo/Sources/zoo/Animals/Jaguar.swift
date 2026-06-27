final class Jaguar: Animal {

    init(name: String, age: Int = 0) {
        super.init(
            name: name,
            species: "Jaguar",
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

    override func tryReproduce() -> Jaguar {
        Jaguar(name: "JaguarChild #10.2.\(Jaguar.id())")
    }

}