final class Leopard: Animal {

    init(name: String, age: Int = 0) {
        super.init(
            name: name,
            species: "Leopard",
            age: age,
            maxAge: 15,
            hunger: 0,
            maxHunger: 10,
            huntingChance: 0.7,
            isAlive: true,
            reproduceChance: 0.3,
            reproductionAge: 3
        )
    }

    override func tryReproduce() -> Leopard {
        Leopard(name: "LeopardChild #10.5.\(Leopard.id())")
    }

}