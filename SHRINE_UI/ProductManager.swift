//
//  ProductManager.swift
//  SHRINE_UI
//
//  Created by Mr. Naveen Kumar on 03/01/21.
//

import Foundation
var result: ProductModel?
struct ProductManager {
    
    func parseJSON() {
        guard let path = Bundle.main.path(forResource: "ProductData", ofType: "json") else { return print("Error: ") }
        
        let url = URL(fileURLWithPath: path)
        
        do {
            let dataJSON = try Data(contentsOf: url)
            let jsonDecorder = JSONDecoder()
           result = try jsonDecorder.decode(ProductModel.self, from: dataJSON)
        }catch {
            print("error")
        }
        
        
    }
    
}
