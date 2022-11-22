//
//  MainView.swift
//  Mebel169
//
//  Created by Vasiliy on 19.11.2022.
//

import SwiftUI

struct MainView: View {
    @State private var text: String = ""
    
    var body: some View {
        
        NavigationView{
            
            ScrollView {
                
                header()
                
                Image("169")
                    .resizable()
                
                Text("Диваны")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(Model.couches) { item in
                            NavigationLink {
                                DetailCard(item: item)
                            } label: {
                                CardView(item: item)
                            }
                        }
                    }
                    .padding()
                }
                
                Text("Кровати")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(Model.bads) { item in
                            NavigationLink {
                                DetailCard(item: item)
                            } label: {
                                CardView(item: item)
                            }
                        }
                    }
                    .padding()
                }
            }
            .background(Color.white)
            
            
        }
    }
    
    
    @ViewBuilder
    
    private func header () -> some View {
        
        VStack (spacing: 18) {
            // TextField
            
            HStack {
                
                HStack {
                    
                    Image(systemName: "magnifyingglass")
                    
                    TextField("Введите для поиска...", text: $text)
                }
                .padding(10)
                .background(Color.white)
                .cornerRadius(10)
                
                // Button
                
                Button {
                    
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 40, height: 40)
                            .foregroundColor(.white)
                        Image(systemName: "slider.horizontal.3")
                    }
                }
            }
        }
        .padding(10)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
