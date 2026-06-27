final class Cheetah: Animal {

    init(name: String, age: Int = 0) {
        super.init(
            name: name,
            species: "Cheetah",
            age: age,
            maxAge: 12,
            hunger: 0,
            maxHunger: 10,
            huntingChance: 0.9,
            isAlive: true,
            reproduceChance: 0.5,
            reproductionAge: 3
        )
    }

    override func tryReproduce() -> Cheetah {
        Cheetah(name: "CheetahChild #10.0.\(Cheetah.id())")
    }

}