//
//  ContentView.swift
//  calcuelaet
//
//  Created by Antonio Gurrola-Beltran on 10/2/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var calcState = CalculatorState()
    
    var body: some View {
        NavigationStack{
            VStack {
                Text(">\t\(calcState.calculatorState)\t<")
            }
            .padding()
            // Container that detects swipe actions
            // Swip container Left (VStack to left), or Right (VStack to Right)
            // + Swipe container UP (Turns into Hstack, goes up), or DOWN (HStack, goes down)
            VStack{
                Button{
                    calcState.add()
                } label: {
                    Image(systemName: "plus")
                }
                Spacer().frame(height: 15)
                Button {
                    calcState.subtract()
                } label: {
                    Image(systemName: "minus")
                }
                Spacer().frame(height: 15)
                Button {
                    calcState.divide()
                } label: {
                    Image(systemName: "divide")
                }
                Spacer().frame(height: 15)
                Button {
                    calcState.multiply()
                } label: {
                    Image(systemName: "multiply")
                }
            }
            .padding()
        }
        .navigationTitle("C4LCUL8")
    }
}

class CalculatorState: ObservableObject {
    @Published var calculatorState:Double = 0.0
    
    func add() {
        calculatorState += 1
    }
    
    func subtract() {
        calculatorState -= 1
    }
    
    func divide() {
        calculatorState = calculatorState * 0.5
    }
    
    func multiply() {
        calculatorState = calculatorState * 2
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
