class Animal {
    let name: String
    let species: String
    var age: Int
    let maxAge: Int
    var hunger: Int
    let maxHunger: Int
    let huntingChance: Double
    var isAlive: Bool
    let reproduceChance: Double
    let reproductionAge: Int

    init(
        name: String,
        species: String,
        age: Int,
        maxAge: Int,
        hunger: Int = 0,
        maxHunger: Int,
        huntingChance: Double,
        isAlive: Bool = true,
        reproduceChance: Double,
        reproductionAge: Int
    ){
        self.name = name
        self.species = species
        self.age = age
        self.maxAge = maxAge
        self.hunger = hunger
        self.maxHunger = maxHunger
        self.huntingChance = huntingChance
        self.isAlive = isAlive
        self.reproduceChance = reproduceChance
        self.reproductionAge = reproductionAge
    }
    func eat() {
        if (Double.random(in: 0...1) < self.huntingChance) {
            self.hunger = 0
            print("\(self.species) \(self.name) поймал добычу и теперь его голод равен \(self.hunger)")
        } else {
            print("\(self.species) \(self.name) не смог поймать добычу")
        }
    }
    func growOlder() {
        self.age += 1
        self.hunger += 1
        print("\(self.species) \(self.name) стал старше на 1 год, теперь ему \(self.age) лет и его голод равен \(self.hunger)")
    }

    func canReproduce() -> Bool {
        return self.age >= self.reproductionAge && Double.random(in: 0...1) < self.reproduceChance
    }
    
    func tryReproduce() -> Animal {
        fatalError("Нужно переопределить метод tryReproduce в подклассе")
    }

    func checkDeath() -> Bool {
        return self.age >= self.maxAge || self.hunger >= self.maxHunger 
    }

    func die() {
        self.isAlive = false
        print("\(self.species) \(self.name) умер")
    }

    static func id() -> Int {
        return Int.random(in: 1...1000)
    }
}