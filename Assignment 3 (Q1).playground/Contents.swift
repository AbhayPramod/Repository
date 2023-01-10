import UIKit

var position = (0,0)

enum directions{
    case left
    case right
    case up
    case down
    case idle
}

var nextmove = directions.idle

func movement(_ move : String){
    if move == "left"{
        nextmove = directions.left
    }
    else if move == "right"{
        nextmove = directions.right
    }
    else if move == "up"{
        nextmove = directions.up
    }
    else{
        nextmove = directions.down
    }
    
    switch (nextmove){
    case .left:
        position.0 -= 1
    case .right:
        position.0 += 1
    case .up:
        position.1 += 1
    case .down:
        position.1 -= 1
    default:
        position.0 += 0
    }
    
    print(position)
}

func quadCalc(){
    if position.0 > 0 && position.1 > 0{
        print("The point is in the 1st Quadrant")
    }else if position.0 < 0 && position.1 > 0{
        print("The point is in the 2nd Quadrant")
    }else if position.0 < 0 && position.1 < 0{
        print("The point is in the 3rd Quadrant")
    }else if position.0 > 0 && position.1 < 0{
        print("The point is in the 4th Quadrant")
    }else{
        print("The point is either at origin or on an axis")
    }
}

quadCalc()
movement("left")
movement("left")
quadCalc()
movement("up")
quadCalc()
