
import Foundation


struct Calculations{
    
    
    func substactTwoNumbers(of firstVal:Int, with SecondVal:Int) -> Double{
        return Double(firstVal - SecondVal);
    }
    
    func multiplyTwoNumbers(of firstVal:Int, with SecondVal:Int) -> Double{
        return Double(firstVal * SecondVal);
    }
    
    func divisionTwoNumbers(of numerator: Int, with denominator: Int) -> Double? {
        if denominator == 0 {
            print("Division by zero")
            return nil
        }
        return Double(numerator / denominator)
    }

    
    func addTwoNumbers(of firstVal:Int, with SecondVal:Int) -> Double{
        return Double(firstVal + SecondVal);
    }
    
    func Sin(of firstVal: Int) -> Double {
        let sinValue = sin(Double(firstVal))
        
        if sinValue > 0 {
            return 1.0
        } else if sinValue < 0 {
            return -1.0
        } else {
            return 0.0
        }
    }
}
