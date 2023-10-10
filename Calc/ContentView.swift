import SwiftUI

struct ContentView: View {
    @State var text = ""
    @State var val1: Int = 0
    @State var val2: Int = 0
    @State var after: Bool = false
    @State var number: String = "0"
    @State var score: String = "0"
    @State var operation: String = ""

    var body: some View {
        VStack {
            Text("KALKULATOR")
                .font(.largeTitle)
            Text(score)
                .frame(width: 315, height: 60)
                .border(Color.black, width: 2)
            
            HStack {
                ForEach(1..<4, id: \.self) { index in
                    Button(String(index)) {
                        if after {
                            score = ""
                        }
                        score += String(index)
                        var x: Int = Int(score) ?? 0
                        score = String(x)
                    }
                    .frame(width: 100, height: 60)
                    .border(Color.black, width: 2)
                    .font(.largeTitle)
                }
            }
            
            HStack {
                ForEach(4..<7, id: \.self) { index in
                    Button(String(index)) {
                        if after {
                            score = ""
                        }
                        score += String(index)
                        var x: Int = Int(score) ?? 0
                        score = String(x)
                    }
                    .frame(width: 100, height: 60)
                    .border(Color.black, width: 2)
                    .font(.largeTitle)
                }
            }
            
            HStack {
                ForEach(7..<10, id: \.self) { index in
                    Button(String(index)) {
                        if after {
                            score = ""
                        }
                        score += String(index)
                        var x: Int = Int(score) ?? 0
                        score = String(x)
                    }
                    .frame(width: 100, height: 60)
                    .border(Color.black, width: 2)
                    .font(.largeTitle)
                }
            }
            
            HStack {
                Button(String(0)) {
                    if after {
                        score = ""
                    }
                    score += "0"
                    var x: Int = Int(score) ?? 0
                    score = String(x)
                }
                .frame(width: 100, height: 60)
                .border(Color.black, width: 2)
                .font(.largeTitle)
                
                Button("+") {
                    operation = "+"
                    val1 = Int(score) ?? 0
                    score = ""
                }
                .frame(width: 100, height: 60)
                .border(Color.black, width: 2)
                .font(.largeTitle)
                
                Button("-") {
                    operation = "-"
                    val1 = Int(score) ?? 0
                    score = ""
                }
                .frame(width: 100, height: 60)
                .border(Color.black, width: 2)
                .font(.largeTitle)
            }
            
            HStack {
                Button("*") {
                    after = false
                    operation = "*"
                    val1 = Int(score) ?? 0
                    score = ""
                }
                .frame(width: 100, height: 60)
                .border(Color.black, width: 2)
                .font(.largeTitle)
                
                Button("/") {
                    operation = "/"
                    val1 = Int(score) ?? 0
                    score = ""
                }
                .frame(width: 100, height: 60)
                .border(Color.black, width: 2)
                .font(.largeTitle)
                
                Button("sin") {
                    operation = "sin"
                    val1 = Int(score) ?? 0
                    score = ""
                }
                .frame(width: 100, height: 60)
                .border(Color.black, width: 2)
                .font(.largeTitle)
            }
            
            Button("Oblicz") {
                after = true
                val2 = Int(score) ?? 0
                switch(operation)
                {
                    case "+":
                    score = String(Calculations().addTwoNumbers(of: val1, with: val2))
                    break;
                    
                case "*":
                    score = String(Calculations().multiplyTwoNumbers(of: val1, with: val2))
                    break;
                    
                case "-":
                    score = String(Calculations().substactTwoNumbers(of: val1, with: val2))
                    break;
                    
                case "/":
                    let corScore = String(Calculations().divisionTwoNumbers(of: val1, with: val2) ?? 0)
                    if(corScore == "0")
                    {
                        score = "0"
                    }else{
                        score = corScore
                    }
                    break;
                    
                case "sin":
                    score = String(Calculations().Sin(of: val1))
                    break;
                
                default:
                    break;
                }
                
                val1 = 0
                val2 = 0
            }
            .frame(width: 315.0, height: 60.0)
            .border(Color.black, width: 2)
            .font(.largeTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
