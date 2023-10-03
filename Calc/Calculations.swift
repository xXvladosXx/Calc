
import Foundation


struct Calculation{
    
    
    func substactTwoNumbers(of firstVal:Int, with SecondVal:Int) -> Double{
        return Double(firstVal - SecondVal);
    }
    
    func multiplyTwoNumbers(of firstVal:Int, with SecondVal:Int) -> Double{
        return Double(firstVal * SecondVal);
    }
    
    func divisionTwoNumbers(of firstVal:Int, with SecondVal:Int) -> Double{
        if(SecondVal == 0)
        {
            print("Cant divide by 0");
            return 0;
        }
            
        return Double(firstVal / SecondVal);
    }
    
    func addTwoNumbers(of firstVal:Int, with SecondVal:Int) -> Double{
        return Double(firstVal + SecondVal);
    }
    
    func sinOfumber(of firstVal:Int) -> Double{
        return 0;
    }
}
