final class SnowLeopard: Animal {

    init(name: String, age: Int = 0) {
        super.init(
            name: name,
            species: "Snow Leopard",
            age: age,
            maxAge: 15,
            hunger: 0,
            maxHunger: 10,
            huntingChance: 0.6,
            isAlive: true,
            reproduceChance: 0.4,
            reproductionAge: 4
        )
    }

    override func tryReproduce() -> SnowLeopard {
        SnowLeopard(name: "SnowLeopardChild #10.6.\(SnowLeopard.id())")
    }

}