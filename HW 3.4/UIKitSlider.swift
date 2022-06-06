//
//  UIKitSlider.swift
//  HW 3.4
//
//  Created by Виталий Подшибякин on 06.06.2022.
//

import SwiftUI

struct UIKitSlider: UIViewRepresentable {
//    @Binding var alpha: Double
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 100
        
//        я так и не понял как изменить прозрачность ползунка slider.thumbTintColor?.cgColor
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
    }
    
}

struct UIKitSlider_Previews: PreviewProvider {
    static var previews: some View {
        UIKitSlider()
    }
}
