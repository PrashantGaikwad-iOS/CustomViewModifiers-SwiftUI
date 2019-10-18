//
//  CustomModifierExample.swift
//  CustomViewModifiers
//
//  Created by Saif on 18/10/19.
//  Copyright © 2019 LeftRightMind. All rights reserved.
//

import SwiftUI

struct WaterMark: ViewModifier {
    
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing){
            content 
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 15))
        }
    }
}

extension View {
    func waterMarked(with textData: String) -> some View {
        self.modifier(WaterMark(text:textData))
    }
}

struct CustomModifierExample: View {
    var body: some View {
        Color.blue
            .frame(width: 300, height: 300)
            .waterMarked(with: "Hey, How are you?")
    }
}

struct CustomModifierExample_Previews: PreviewProvider {
    static var previews: some View {
        CustomModifierExample()
    }
}
