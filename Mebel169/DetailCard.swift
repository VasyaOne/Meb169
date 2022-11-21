//
//  DetailCard.swift
//  Mebel169
//
//  Created by Vasiliy on 19.11.2022.
//

import SwiftUI

struct DetailCard: View {
    
    var item: Model
    @State private var count = 0
    
    var body: some View {
        
        ZStack {
            VStack {
                Spacer()
                
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Spacer()
                
            }
        }
    }
    
    
    @ViewBuilder
    private func detail() -> some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(.white)
            
            VStack {
                
                HStack {
                    
                    VStack (alignment: .leading){
                        
                        Text(item.title)
                        font(.system(.title, design: .rounded))
                        
                        VStack{
                            Text("Размеры: 43/45/220")
                            Text("Вес: 45кг")
                            
                        }
                        .font(.subheadline)
                        foregroundColor(.gray)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 230, alignment: .topLeading)
                    .padding()
                    
                    Spacer()
                    
                    VStack {
                        HStack{
                            ForEach(1..<5) { _ in
                                Image(systemName: "star.fill")
                            }
                            Image(systemName: "star")
                        }
                        Text("143 отзывов")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .padding(.top, 3)
                    }
                }
                
                HStack{
                    
                    Text(item.price)
                        .font(.system(.title2, design: .rounded ))
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .overlay {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.gray, lineWidth: 2)
                                    .foregroundColor(.clear)
                            }
                        
                        HStack{
                            
                            Button {
                                count -= 1
                            } label: {
                                Text("-")
                            }
                            
                            Spacer()
                            
                            Text(String(count))
                            
                            Spacer()
                            
                            Button {
                                count += 1
                            } label: {
                                Text("+")
                            }
                            
                            
                        }
                        .font(.title3)
                        .foregroundColor(.gray)
                        .padding([.leading, .trailing])
                    }
                    .padding()
                    
                    Button {
                        print("добавлено в корзину")
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.accentColor)
                            Text("Cart")
                                .foregroundColor(.white)
                        }
                        .padding(10)
                    }

                }
                frame(maxWidth: .infinity, maxHeight: 60)
                .padding([.leading, .trailing, .bottom])
            }
        }
        frame(height: 230)
    }
}

struct DetailCard_Previews: PreviewProvider {
    static var previews: some View {
        DetailCard(item: Model(title: "Диван", price: "1000", imageName: "couch01"))
    }
}
