//
//  GuideComponent.swift
//  Honeymoon
//
//  Created by Kakidiako Afonso on 25/12/22.
//

import SwiftUI

struct GuideComponent: View {
    var title: String
    var subTitle:String
    var icon : String
    var body: some View {
        HStack{
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(.red)
                .padding(.trailing,5)
            VStack(spacing:10){
                HStack{
                    Text(title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    Spacer()
                    Text(subTitle)
                        .font(.system(size: 25))
                        .fontWeight(.heavy)
                        .foregroundColor(.pink)
                }
                HStack{
                    Text("Paris, a capital da França, é uma importante cidade europeia e um centro mundial de arte, moda, gastronomia e cultura. Sua paisagem urbana")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding(4)
    }
}

struct GuideComponent_Previews: PreviewProvider {
    static var previews: some View {
        GuideComponent(title: "heart", subTitle: "Swipe right", icon: "heart")
    }
}
