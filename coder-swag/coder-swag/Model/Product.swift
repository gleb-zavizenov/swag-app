//
//  Product.swift
//  coder-swag
//
//  Created by Gleb Zavizenov on 2019-05-30.
//  Copyright © 2019 Gleb Zavizenov. All rights reserved.
//

import Foundation

struct Product {
    
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String){
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
