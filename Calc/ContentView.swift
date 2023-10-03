//
//  ContentView.swift
//  Calc
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State var text: String = ""
    @State var val1: Int = 0
    @State var val2: Int = 0
    @State var firstVal: Bool = true

    let buttons = [
        "1", "2", "3", "+",
        "4", "5", "6", "-",
        "7", "8", "9", "*",
        "C", "0", "=", "/"
    ]

    var body: some View {
        VStack {
            Text("Kalkulator")
            Text(text)
        }
        .padding()

        LazyVGrid(columns: Array(repeating: GridItem(), count: 4)) {
            ForEach(buttons, id: \.self) { button in
                ButtonView(name: button, text: $text, val1: $val1, val2: $val2, firstVal: $firstVal)
            }
        }
    }
}

#Preview {
    ContentView()
}
