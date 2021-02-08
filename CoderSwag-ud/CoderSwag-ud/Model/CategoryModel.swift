//
//  CategoryModel.swift
//  CoderSwag-ud
//
//  Created by Arghadeep  on 08/02/21.
//

import Foundation

struct CategoryModel {
    
    //private for setting and public for getting
    private(set) public var title: String
    private(set) public var imageName: String
    private(set) public var productType: ProductType
    
    /// Init function to create a category object.
    ///
    /// It will create a new Category Object everytime the function is called.
    ///
    /// - Parameters :
    ///     - title: Title of the category.
    ///     - imageName: Image Name of the category.
    ///     - productType: Type of product.
    init(title: String, imageName: String, productType: ProductType) {
        self.title = title
        self.imageName = imageName
        self.productType = productType
    }
}
