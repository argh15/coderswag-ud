//
//  CategoryCellTableViewCell.swift
//  CoderSwag-ud
//
//  Created by Arghadeep  on 08/02/21.
//

import UIKit

class CategoryCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    /// This function will update the category table view cell with the passed `CategoryModel` object.
    ///
    /// This will set the categoryTitle and categoryImage with the passed object values.
    ///
    /// - Parameter category: CategoryModel Object.
    func updateViews(category: CategoryModel) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
