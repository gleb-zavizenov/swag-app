//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Gleb Zavizenov on 2019-05-30.
//  Copyright © 2019 Gleb Zavizenov. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell{
    
    @IBOutlet weak var categoryImage : UIImageView!
    @IBOutlet weak var categoryLabel : UILabel!

    func updateViews(category:Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryLabel.text = category.title
    }

}
