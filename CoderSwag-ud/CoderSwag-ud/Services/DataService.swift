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
        CategoryModel.init(title: "SHIRTS", imageName: "shirts.png"),
        CategoryModel.init(title: "HOODIES", imageName: "hoodies.png"),
        CategoryModel.init(title: "HATS", imageName: "hats.png"),
        CategoryModel.init(title: "DIGITAL", imageName: "digital.png")
    ]
    
    /// This function will return an array of CategoryModel.
    ///
    /// Will return the categories array created in the class. This will return static data from DataService class.
    ///
    /// - Returns: array of CategoryModel.
    func getCategories() -> [CategoryModel] {
        return categories
    }
}
