//
//  Cardview.swift
//  Mebel169
//
//  Created by Vasiliy on 19.11.2022.
//

import SwiftUI

struct CardView: View {
    
    var item: Model
    @State private var isTapet : Bool = false
    
    var body: some View {
       
            VStack(alignment: .leading){
                Text(item.title)
                    .font(.system(.headline, design: .rounded))
                    .foregroundColor(.black)
                
                Spacer()
                
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                
                HStack{
                    Text(item.price)
                        .font(.system(size: 15, weight: .semibold, design: .rounded))
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Image(systemName: isTapet ? "heart.fill" : "heart")
                        .onTapGesture {
                            isTapet = true
                        }
                }
                
            }
            .padding()
            .background(Color.white)
            .frame(width: 170, height: 230)
            .cornerRadius(20)
        }
    }



struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(item: Model(title: "Диван", price: "1000", imageName: "couch01"))
    }
}
