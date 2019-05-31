//
//  DataService.swift
//  coder-swag
//
//  Created by Gleb Zavizenov on 2019-05-30.
//  Copyright © 2019 Gleb Zavizenov. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Benie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo hat White", price: "$32", imageName: "hat03.png"),
        Product(title: "devslopes Logo hat Red", price: "$42", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devslopes Logo Hoodie Black", price: "$32", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo T-Shirt Black", price: "$29", imageName: "shirt01.png"),
        Product(title: "Devslopes Logo T-Shirt Grey", price: "$29", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo T-Shirt Red", price: "$29", imageName: "shirt03.png"),
        Product(title: "Devslopes Logo T-Shirt Grey", price: "$29", imageName: "shirt04.png"),
        Product(title: "Devslopes Logo T-Shirt Black", price: "$29", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getCategoryTitle(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "HATS":
            return hats
        case "HOODIES":
            return hoodies
        case "SHIRTS":
            return shirts
        case "DIGITAL":
            return digitalGoods
        default:
            return shirts
        }
    }
}
