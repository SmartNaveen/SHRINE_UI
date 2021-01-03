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
    
    func configurCell(img: ProductModel) {
//        imgView.image = img.ProductDat

    }
    
    
    func nib() -> UINib {
        return UINib(nibName: nibName, bundle: nil)
    }

}
