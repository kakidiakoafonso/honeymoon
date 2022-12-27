//
//  Footer.swift
//  Honeymoon
//
//  Created by Kakidiako Afonso on 25/12/22.
//

import SwiftUI

struct Footer: View {
    @Binding var showAlert: Bool
    var body: some View {
        HStack{
            Image(systemName: "xmark.circle")
                .font(.system(size: 35))
                .foregroundColor(.pink)
            Spacer()
            Button{
                self.showAlert.toggle()
            } label: {
                Text("BOOK DESTINATION")
                    .font(.title3)
                    .bold()
                    .padding(.vertical,10)
                    .padding(.horizontal,30)
                    .foregroundColor(.pink)
                    .background(content: {
                        Capsule()
                            .stroke(Color.red,lineWidth: 2)
                    })
            }
            Spacer()
            Image(systemName: "heart.circle")
                .font(.system(size: 35))
                .foregroundColor(.pink)
            
        }
    }
}

struct Footer_Previews: PreviewProvider {
    @State static var show : Bool = false
    static var previews: some View {
        Footer(showAlert: $show)
    }
}
