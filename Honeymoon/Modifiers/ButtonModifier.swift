//
//  SwiftUIView.swift
//  Honeymoon
//
//  Created by Kakidiako Afonso on 25/12/22.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content:Content)-> some View {
        content
            .padding(.vertical,18)
            .padding(.horizontal,120)
            .foregroundColor(.white)
            .bold()
            .background(content: {
                Capsule()
                    .fill(Color.pink)
            })
    }
}
