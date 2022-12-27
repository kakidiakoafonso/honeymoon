//
//  InfoView.swift
//  Honeymoon
//
//  Created by Kakidiako Afonso on 25/12/22.
//

import SwiftUI

struct InfoView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack{
                GuideHeader()
                .padding(.top,40)
                
                Text("App info")
                    .modifier(TitleModifier())
                    .padding(.top,30)
            }
            VStack(spacing:15){
                InfoItem(label: "Application", text: "Honeymoon")
                InfoItem(label: "Compatibility", text: "Iphone")
                InfoItem(label: "Developer", text: "Honeymoon")
                InfoItem(label: "Designer", text: "Honeymoon")
                InfoItem(label: "Website", text: "kakidiko.com")
                InfoItem(label: "Version", text: "Honeymoon")
            }
            .padding(.top,20)
            
            Text("Credits")
                .modifier(TitleModifier())
                .padding(.top,30)
            
            VStack{
                InfoItem(label: "Photos", text: "Pinterest")
                InfoItem(label: "Photographer", text: "Pinteres")
            }
            Button{
                dismiss.callAsFunction()
            } label: {
                Text("CONTINUE")
                    .modifier(ButtonModifier())
                    .padding(.top,30)
                    
            }
            
        }
        .padding(.horizontal)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
