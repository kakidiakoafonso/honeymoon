//
//  InfoItem.swift
//  Honeymoon
//
//  Created by Kakidiako Afonso on 25/12/22.
//

import SwiftUI

struct InfoItem: View {
    var label : String
    var text : String
    var body: some View {
        VStack{
            HStack{
                Text(label)
                    .foregroundColor(.gray)
                    .font(.system(size: 20))
                Spacer()
                Text(text)
                    .font(.title2)
                    .foregroundColor(.gray)
                    .bold()
            }
            Divider()
        }
    }
}

struct InfoItem_Previews: PreviewProvider {
    static var previews: some View {
        InfoItem(label: "Nome", text: "Kakidiako")
    }
}
