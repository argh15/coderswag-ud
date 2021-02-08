//
//  DataService.swift
//  CoderSwag-ud
//
//  Created by Arghadeep  on 08/02/21.
//

import Foundation

class DataService {
    
    ///making a singleton data service class
    static let instance = DataService()
    
    ///data source - category array - static data
    private let categories = [
        CategoryModel.init(title: "SHIRTS", imageName: "shirts.png", productType: .shirts),
        CategoryModel.init(title: "HOODIES", imageName: "hoodies.png", productType: .hoodies),
        CategoryModel.init(title: "HATS", imageName: "hats.png", productType: .hats),
        CategoryModel.init(title: "DIGITAL", imageName: "digital.png", productType: .digitalGoods)
    ]
    
    ///data source - hats array - static data
    private let hats = [
        ProductModel.init(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        ProductModel.init(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        ProductModel.init(title: "Devslopes Logo Hat Light", price: "$22", imageName: "hat03.png"),
        ProductModel.init(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    ///data source - hoodies array - static data
    private let hoodies = [
        ProductModel.init(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        ProductModel.init(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        ProductModel.init(title: "Devslopes Hoodie Grey", price: "$32", imageName: "hoodie02.png"),
        ProductModel.init(title: "Devslopes Hoodie Red", price: "$32", imageName: "hoodie02.png")
    ]
    
    ///data source - shirts array - static data
    private let shirts = [
        ProductModel.init(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        ProductModel.init(title: "Devslopes Badge Light Grey", price: "$19", imageName: "shirt02.png"),
        ProductModel.init(title: "Devslopes Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        ProductModel.init(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04.png"),
        ProductModel.init(title: "Kickflip Studios Black", price: "$18", imageName: "shirt05.png")
    ]
    
    ///data source - digital goods array - static data
    private let digitalGoods = [ProductModel]()
    
    /// This function will return an array of CategoryModel.
    ///
    /// Will return the categories array created in the class. This will return static data from DataService class.
    ///
    /// - Returns: array of CategoryModel.
    func getCategories() -> [CategoryModel] {
        return categories
    }
    
    /// This function will return an array of ProductModel.
    ///
    /// Will return the products array based on the given `productType`. This will return static data from DataService class.
    ///
    /// - Parameter productType: based on ProductType enum.
    /// - Returns: array of ProductModel.
    func getProducts(productType: ProductType) -> [ProductModel] {
        switch productType {
        case .hats:
            return hats
        case .shirts:
            return shirts
        case .digitalGoods:
            return digitalGoods
        case .hoodies:
            return hoodies
        }
    }
}

/// Product Types in the app
enum ProductType: String {
    case hats = "HATS",
         shirts = "SHIRTS",
         hoodies = "HOODIES",
         digitalGoods = "DIGITAL GOODS"
}
