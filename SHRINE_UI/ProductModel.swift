//
//  ProductModel.swift
//  SHRINE_UI
//
//  Created by Mr. Naveen Kumar on 03/01/21.
//

import Foundation
struct ProductModel: Decodable {
    let ProductData: [ProductItem]
}

struct ProductItem: Decodable {
    let productImage: [String]
    let productName: [String]
    let productPrice: [String]
}
