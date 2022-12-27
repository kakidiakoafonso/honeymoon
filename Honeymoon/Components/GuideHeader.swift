//
//  GuideHeader.swift
//  Honeymoon
//
//  Created by Kakidiako Afonso on 25/12/22.
//

import SwiftUI

struct GuideHeader: View {
    var body: some View {
        VStack {
            Capsule()
                .foregroundColor(.gray.opacity(0.7))
                .shadow(radius: 3)
                .frame(width: 230,height: 4)
                
            Text("HONEYMOON")
                .modifier(TitleModifier())
                
        }
    }
}

struct GuideHeader_Previews: PreviewProvider {
    static var previews: some View {
        GuideHeader()
    }
}
