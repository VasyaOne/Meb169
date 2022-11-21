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
        Model(title: "Диван 1", price: "1000", imageName: "couch01"),
        Model(title: "Диван 2", price: "1000", imageName: "couch02"),
        Model(title: "Диван 3", price: "1000", imageName: "couch03"),
        Model(title: "Диван 4", price: "1000", imageName: "couch04")
    ]
    
    static let bads = [
        Model(title: "Кровать", price: "3000", imageName: "bad01"),
        Model(title: "Кровать", price: "3000", imageName: "bad02"),
        Model(title: "Кровать", price: "3000", imageName: "bad03"),
        Model(title: "Кровать", price: "3000", imageName: "bad04")
    ]
}
