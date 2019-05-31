//
//  ProductsVC.swift
//  coder-swag
//
//  Created by Gleb Zavizenov on 2019-05-30.
//  Copyright © 2019 Gleb Zavizenov. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var productsCollection: UICollectionView!
    
    private(set) public var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()

        productsCollection.dataSource = self
        productsCollection.delegate = self
    }
    
    func initProducts(category: Category){
        products = DataService.instance.getCategoryTitle(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductViewCell", for: indexPath) as? ProductViewCell{
            var product = products[indexPath.row]
            cell.updateView(product: product)
            return cell
        }
        return ProductViewCell()
    }
}
