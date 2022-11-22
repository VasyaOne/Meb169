//
//  CardViewBlanck.swift
//  Mebel169
//
//  Created by Vasiliy on 22.11.2022.
//

import SwiftUI

struct CardViewBlanck: View {
    
    var item: Model
    
    var body: some View {
        
        Image(item.imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 250)
        
    }
}

struct CardViewBlanck_Previews: PreviewProvider {
    static var previews: some View {
        CardViewBlanck(item: Model(title: "Диван", price: "1000", imageName: "couch01"))
    }
}
