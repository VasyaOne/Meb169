//
//  Model.swift
//  Mebel169
//
//  Created by Vasiliy on 19.11.2022.
//

import Foundation

struct Model: Identifiable {
    let id = UUID().uuidString
    let title: String
    let price: String
    let imageName: String
    
    
    static let couches = [
        Model(title: "Диван 1", price: "23 000 руб", imageName: "couch01"),
        Model(title: "Диван 2", price: "15 000 руб", imageName: "couch02"),
        Model(title: "Диван 3", price: "29 000 руб", imageName: "couch03"),
        Model(title: "Диван 4", price: "30 000 руб", imageName: "couch04")
    ]
    
    static let bads = [
        Model(title: "Кровать", price: "3000", imageName: "bad01"),
        Model(title: "Кровать", price: "3000", imageName: "bad02"),
        Model(title: "Кровать", price: "3000", imageName: "bad03"),
        Model(title: "Кровать", price: "3000", imageName: "bad04")
    ]
    
    static let couchesViewDetailCard = [
        Model(title: "Диван 1", price: "23 000 руб", imageName: "couch01"),
        Model(title: "Диван 2", price: "15 000 руб", imageName: "couch0102"),
        Model(title: "Диван 3", price: "29 000 руб", imageName: "couch0103"),
        Model(title: "Диван 4", price: "30 000 руб", imageName: "couch0104")
    ]
    
    
    
    
}
