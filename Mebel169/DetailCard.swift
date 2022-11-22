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
                
                Image("169")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                // тут будет скрол с фото
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(Model.couchesViewDetailCard) { item in
                            CardViewBlanck(item: item)
                        }                        }
                    }
                    .padding()
                
//                Image(item.imageName)
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                Text("Вы можете купить диван-кровать Бомонд недорого. От других моделей, он отличается невероятно простым, но стильным дизайном. Он комфортный, удобный. Легко трансформируется в двуспальную кровать.")
                
                Spacer()
                
                detailCard()
            }
        }
    }
    
    
    
        // MARK: функция с нижним описанием
    @ViewBuilder
    private func detailCard () -> some View {
        ZStack{
            
            VStack {
                
                HStack {
                    // блок с размерами
                    segmetA()
                    
                    // блок со звездами
                    segmenB()
                    
                }
                
                HStack {
                    
                    Text(item.price)
                        .font(.system(.title2, design: .rounded ))
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
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
                .frame(maxWidth: .infinity, maxHeight: 60)
                .padding([.leading, .trailing, .bottom])
            }
        }
        .frame(height: 230)
        
    }
    
    // MARK: Сегмент с описанием ВГХ
    @ViewBuilder
    private func segmetA () -> some View {
        VStack (alignment: .leading) {
            
            Text(item.title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.bold)
            
            VStack (alignment: .leading){
                Text("Размеры: 43/45/220")
                Text("Вес: 45кг")
            }
            .font(.subheadline)
            .foregroundColor(.gray)
            
        }
        
        .frame(maxWidth: .infinity, maxHeight: 230, alignment: .topLeading)
        .padding()
    }
    
    //MARK: блок со звездами и отзывами
    @ViewBuilder
    private func segmenB () -> some View {
        VStack {
            HStack{
                ForEach(1..<5) { _ in
                    Image(systemName: "star.fill")
                }
                Image(systemName: "star")
            }
            Text("143 отзывов")
                .font(.subheadline)
                .foregroundColor(.black)
                .padding(.top, 3)
        }
        .frame(maxWidth: .infinity, maxHeight: 230, alignment: .topLeading)
        .padding(25)
    }
    
}




struct DetailCard_Previews: PreviewProvider {
    static var previews: some View {
        DetailCard(item: Model(title: "Диван", price: "1000", imageName: "couch01"))
    }
}
