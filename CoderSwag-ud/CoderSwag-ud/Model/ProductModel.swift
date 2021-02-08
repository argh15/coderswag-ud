//
//  ProductModel.swift
//  CoderSwag-ud
//
//  Created by Arghadeep  on 08/02/21.
//

import Foundation
struct ProductModel {
    
    //private for setting and public for getting
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    /// Init function to create a product object.
    ///
    /// It will create a new Product Object everytime the function is called.
    ///
    /// - Parameters :
    ///     - title: Title of the product.
    ///     - price: Price of the product.
    ///     - imageName: Image Name of the product.
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
