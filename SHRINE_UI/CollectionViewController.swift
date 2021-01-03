//
//  CollectionViewController.swift
//  SHRINE_UI
//
//  Created by Mr. Naveen Kumar on 02/01/21.
//

import UIKit

class CollectionViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    
    let imageCollectionViewCell = ImageCollectionViewCell()
    let productManager = ProductManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        productManager.parseJSON()
        collectionView.register(imageCollectionViewCell.nib(), forCellWithReuseIdentifier: imageCollectionViewCell.identifier)
        collectionView.backgroundColor = UIColor.white
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.isNavigationBarHidden = false
    }
}


 // MARK:- COLLECTIONVIEW METHOD
extension CollectionViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return result?.ProductData[section].productImage.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let imageCell = collectionView.dequeueReusableCell(withReuseIdentifier: imageCollectionViewCell.identifier, for: indexPath) as! ImageCollectionViewCell
        imageCell.configurCell(productData: result!, indexPath: indexPath)
        return imageCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.bounds.size.width - 10) / 2, height: 240)
    }
    
}
