//
//  ProductsVC.swift
//  CoderSwag-ud
//
//  Created by Arghadeep  on 08/02/21.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    //private for setting and public for getting
    private(set) public var products = [ProductModel]()
    
    @IBOutlet weak var productsCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.delegate = self
        productsCollection.dataSource = self
    }
    
    /// This function will initialise the product array based on given `ProductType`.
    ///
    ///It will get the products from DataService based on the product type passed.
    ///
    /// - Parameter product: ProductType enum.
    func initProducts(product: ProductType) {
        products = DataService.instance.getProducts(productType: product)
        navigationItem.title = product.rawValue
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        } else {
            return ProductCell()
        }
    }
}
