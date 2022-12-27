//
//  GuideView.swift
//  Honeymoon
//
//  Created by Kakidiako Afonso on 25/12/22.
//

import SwiftUI

struct GuideView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(spacing:20){
            ScrollView{
                GuideHeader()
                    .padding(.vertical,30)
                VStack(spacing:20){
                    Text("Get started")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.pink)
                    
                    Text("Discover and pick the perfect destination for your romantic honeymoon!")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                }
                
                VStack{
                    
                    GuideComponent(title: "LIKE", subTitle: "Swipe right", icon: "heart.circle")
                    
                    GuideComponent(title: "DISMISS", subTitle: "Swipe left", icon: "xmark.circle")
                    
                    GuideComponent(title: "BOOK", subTitle: "Swipe right", icon: "checkmark.square")
                }
                
                Button{
                    dismiss.callAsFunction()
                } label: {
                    Text("CONTINUE")
                        .modifier(ButtonModifier())
                        .padding(.top,30)
                        
                }
                
            }
        }
        .padding(.horizontal,5)
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
    }
}
