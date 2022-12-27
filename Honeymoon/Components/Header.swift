//
//  Header.swift
//  Honeymoon
//
//  Created by Kakidiako Afonso on 25/12/22.
//

import SwiftUI

struct Header: View {
    @Binding var showGuide : Bool
    @Binding var showInfo : Bool
    var body: some View {
        HStack{
            Button{
                self.showInfo.toggle()
            } label: {
                Image(systemName: "info.circle")
                    .font(.system(size: 35))
            }
            Spacer()
            Text("HONEYMOON")
                .modifier(TitleModifier())
            Spacer()
            
            Button{
                self.showGuide.toggle()
            } label: {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 35))
            }
            
        }
    }
}

struct Header_Previews: PreviewProvider {
    @State static var show = false
    @State static var showGuide = false
    static var previews: some View {
        Header(showGuide:$showGuide,showInfo:$show)
    }
}
