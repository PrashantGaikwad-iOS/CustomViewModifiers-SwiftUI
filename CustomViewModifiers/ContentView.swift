//
//  ContentView.swift
//  CustomViewModifiers
//
//  Created by Saif on 18/10/19.
//  Copyright © 2019 LeftRightMind. All rights reserved.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 30))
    }
}

extension View {
    func titleStyle() -> some View {
        self.modifier(TitleModifier())
    }
}

struct ContentView: View {
    var body: some View {
        Text("Prashant")
        .titleStyle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
