//
//  ProductCellCollectionViewCell.swift
//  CoderSwag-ud
//
//  Created by Arghadeep  on 08/02/21.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    /// This function will update the product table view cell with the passed `ProductModel` object.
    ///
    /// This will set the productTitle,  productPrice and productImage with the passed object values.
    ///
    /// - Parameter category: ProductModel Object.
    func updateViews(product: ProductModel) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
}
