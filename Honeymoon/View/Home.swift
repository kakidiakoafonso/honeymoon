//
//  Home.swift
//  Honeymoon
//
//  Created by Kakidiako Afonso on 25/12/22.
//

import SwiftUI

struct Home: View {
    @State var showAlert: Bool = false
    @State var showGuide: Bool = false
    @State var showInfo: Bool = false
    
    @State var offset: CGSize = .zero
    @State var color: Color = .black
    @State var isDragging : Bool = false
    @State var paises :[String] = ["Angola","Franca","Mexico","Brasil","EUA","RDC"]
    
    
    var body: some View {
        VStack{
            Header(showGuide:$showGuide,showInfo:$showInfo)
                .opacity(isDragging ? 0.0:1.0)
            Spacer()
                ZStack {
                    ForEach(paises, id: \.self){country in
                    
                            Card(country: country)
                            .contentShape(Rectangle())
                                .offset(x:offset.width)
                                .scaleEffect(isDragging ? 0.7:1.0)
                                .rotationEffect(.degrees(Double(offset.width/30)))
                                .onTapGesture {
                                    print("Clickou no \(country)")
                                    paises = paises.filter{ pais in
                                        return pais != country
                                    }
                                }
                                .gesture(DragGesture()
                                    .onChanged{ params in
                                        withAnimation{
                                            self.offset = params.translation
                                            self.isDragging = true
                                        }
                                    }
                                    .onEnded{_ in
                                        withAnimation{
                                            //swipeCard(widht: offset.width)
                                            self.offset = .zero
                                            self.isDragging = false
                                        }
                                    }
                                )
                        
                    }
                
                
            }
            Spacer()
            Footer(showAlert:$showAlert)
                .opacity(isDragging ? 0.0:1.0)
        }
        .padding(.horizontal,10)
        .alert("Destination Booked",isPresented: $showAlert){
            Text("Destination Booked")
        }
        .sheet(isPresented: $showGuide) {
            GuideView()
        }
        .sheet(isPresented: $showInfo) {
            InfoView()
        }
    }
    
    func swipeCard(widht:CGFloat) {
        switch widht {
        case -200...(-100):
            offset = CGSize(width: -500, height: 0)
        case 200...(100):
            offset = CGSize(width: -500, height: 0)
        default:
            offset = .zero
        }
    }
    

}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
