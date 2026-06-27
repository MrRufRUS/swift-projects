final class MountainLion: Animal {

    init(name: String, age: Int = 0) {
        super.init(
            name: name,
            species: "Mountain Lion",
            age: age,
            maxAge: 15,
            hunger: 0,
            maxHunger: 10,
            huntingChance: 0.6,
            isAlive: true,
            reproduceChance: 0.3,
            reproductionAge: 3
        )
    }

    override func tryReproduce() -> MountainLion {
        MountainLion(name: "MountainLionChild #10.8.\(MountainLion.id())")
    }

}