class Bird {
    var isFemale = true
    
    func layEgg(){
        if isFemale{
            print("Laying egg...")
        }
    }
}

class Eagel: Bird, CanFly{
    func soar(){
        print("Eagel soaring!")
    }
    func fly() {
        print("Eagel goes brrr")
    }
}
 let eagel = Eagel()

class Penguin: Bird, CanSwim{
    func swim(){
        print("Penguin goes swimming")
    }
}

let penguin = Penguin()

struct FlyingMuseum{
    func showFlyingDemo(flyingObject: CanFly){
        flyingObject.fly()
        if let eagel = flyingObject as? Eagel{
            eagel.soar()
        }
    }
}

let museum = FlyingMuseum()
museum.showFlyingDemo(flyingObject: eagel)

class Plane: CanFly {
    func fly() {
        print("Plane goes brrr")
    }
}

let airPlane = Plane()
museum.showFlyingDemo(flyingObject: airPlane)

protocol CanFly{
    func fly()
}

protocol CanSwim{
    func swim()
}

let flyingGroup: [CanFly] = [eagel, airPlane]

for flyingObject in flyingGroup {
    museum.showFlyingDemo(flyingObject: flyingObject)
}
