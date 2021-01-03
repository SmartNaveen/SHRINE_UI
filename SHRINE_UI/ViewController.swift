//
//  ViewController.swift
//  SHRINE_UI
//
//  Created by Mr. Naveen Kumar on 31/12/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNameTxtFld: UITextField!
    @IBOutlet weak var passWordTxtFiled: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTxtFld.layer.cornerRadius = 10.0
        userNameTxtFld.layer.borderWidth = 1.0
        passWordTxtFiled.layer.cornerRadius = 10.0
        passWordTxtFiled.layer.borderWidth = 1.0
        userNameTxtFld.layoutIfNeeded()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.isNavigationBarHidden = true
    }

}

