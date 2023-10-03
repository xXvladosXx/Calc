//
// ContentView.swift
// jeden
//
// Created by student on 03/10/2023.
//

import SwiftUI

struct ContentView: View {

@State var text = ""
@State var val1: Int = 0
@State var val2: Int = 0
@State var firstValue: Bool = true
@State var score: String = "0"

var body: some View {
VStack {
Text("KALKULATOR")
.font(.largeTitle)
Text(score).frame(width: 315, height: 60).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
HStack{
ForEach(1..<4, id: \.self)
{
index in
Button(String(index)){}.frame(width: 100, height: 60)
.border(Color.black, width: 2).font(.largeTitle)
}
}
HStack{
ForEach(4..<7, id: \.self)
{
index in
Button(String(index)){}.frame(width: 100, height: 60)
.border(Color.black, width: 2).font(.largeTitle)
}
}
HStack{
ForEach(7..<10, id: \.self)
{
index in
Button(String(index)){}.frame(width: 100, height: 60)
.border(Color.black, width: 2).font(.largeTitle)
}
}
HStack{
Button(String(0)){}.frame(width: 100, height: 60)
.border(Color.black, width: 2).font(.largeTitle)
Button("+"){}.frame(width: 100, height: 60)
.border(Color.black, width: 2).font(.largeTitle)
Button("-"){}.frame(width: 100, height: 60)
.border(Color.black, width: 2).font(.largeTitle)
}
HStack{
Button("*"){}.frame(width: 100, height: 60)
.border(Color.black, width: 2).font(.largeTitle)
Button("/"){}.frame(width: 100, height: 60)
.border(Color.black, width: 2).font(.largeTitle)
Button("sin"){}.frame(width: 100, height: 60)
.border(Color.black, width: 2).font(.largeTitle)
}
Button("Oblicz"){
score = String(52)
}.frame(width: 315.0, height: 60.0).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2).font(.largeTitle)
}
}
}

#Preview {
ContentView()
}
