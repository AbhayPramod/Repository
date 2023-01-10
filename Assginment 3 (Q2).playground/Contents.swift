import UIKit

func divideIfWhole(_ dividend : Int, _ divisor : Int){
    
    if dividend % divisor == 0{
        var answer = dividend / divisor
        print("yep it divides \(answer) times")
    }else{
        print("Not Divisibel :[")
    }
}

divideIfWhole(10, 2)

