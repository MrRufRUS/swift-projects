final class Panther: Animal {

    init(name: String, age: Int = 0) {
        super.init(
            name: name,
            species: "Panther",
            age: age,
            maxAge: 20,
            hunger: 0,
            maxHunger: 10,
            huntingChance: 0.7,
            isAlive: true,
            reproduceChance: 0.4,
            reproductionAge: 4
        )
    }

    override func tryReproduce() -> Panther {
        Panther(name: "PantherChild #10.3.\(Panther.id())")
    }

}