//
//  Card.swift
//  Honeymoon
//
//  Created by Kakidiako Afonso on 25/12/22.
//

import SwiftUI

struct Card: View {
    var country : String
    var body: some View {
        VStack{
                Image("paris")
                .resizable()
                .cornerRadius(24)
                .scaledToFit()
                .frame(minWidth: 0,maxWidth: .infinity)
                .overlay(alignment: .bottom,content: {
                    VStack(spacing: 23){
                        Text(country)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .overlay(alignment:.bottom ,content: {
                                Rectangle()
                                    .fill(.white)
                                    .frame(width: 150,height: 2)
                            })
                            
                        Text("Paris")
                            .foregroundColor(. black)
                            .font(.footnote)
                            .frame(width: 130,height: 30)
                            .fontWeight(.bold)
                            .background(content: {
                                Capsule()
                                    .fill(.white)
                                    
                            })
                    }.padding(.bottom,100)
                })
                
            
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(country:"Franca")
    }
}
