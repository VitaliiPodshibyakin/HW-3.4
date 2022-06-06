//
//  ContentView.swift
//  HW 3.4
//
//  Created by Виталий Подшибякин on 05.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var targetValue = Int.random(in: 1...100)
    private var currentValue = Double.random(in: 1...100)
    @State private var alertPresented = false
    
    var body: some View {
        VStack {
            Text("Продвиньте слайдер, как можно ближе к: \(targetValue).")
                .font(.system(size: 16))
                .padding(.top, 200)
            HStack {
                Text("0")
                UIKitSlider()
                Text("100")
            }
            .padding()
            Button("Проверь меня!", action: { computeScore() })
                .alert("Your Score \(computeScore())", isPresented: $alertPresented, actions: {}) {
                }
                .padding(.top, 50)
            Button("Начать заново", action:{ targetValue = Int.random(in: 1...100) })
                .padding()
            Spacer()
        }

    }
    
   private func computeScore() -> Int {
        alertPresented.toggle()
//       здесь фиолетовая ошибка, не понимаю от чего
        let difference = abs(targetValue - lround(currentValue))
        return 100 - difference
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
