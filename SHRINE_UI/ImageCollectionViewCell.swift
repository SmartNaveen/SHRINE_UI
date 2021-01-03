//
//  ImageCollectionViewCell.swift
//  SHRINE_UI
//
//  Created by Mr. Naveen Kumar on 02/01/21.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    
    let nibName = "ImageCollectionViewCell"
    let identifier = "imageCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configurCell(productData:ProductModel ,indexPath:IndexPath) {

        imgView.image = UIImage(named: productData.ProductData[indexPath.section].productImage[indexPath.item])
        productName.text = productData.ProductData[indexPath.section].productName[indexPath.item]
        productPrice.text = "$\(productData.ProductData[indexPath.section].productPrice[indexPath.item])"
        
    }
    
    
    func nib() -> UINib {
        return UINib(nibName: nibName, bundle: nil)
    }

}
