//
//  ProductViewController.swift
//  PrimeraApp
//
//  Created by David Zavala on 21/10/16.
//  Copyright © 2016 David Zavala. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        productNameLabel.text = "1937 Desk Phone"
        productImageView.image = UIImage(named:"phone-fullscreen3")
        
    }

    @IBAction func addToCartPressed(_ sender: AnyObject) {
        print("a ver si ya jala esta madre")
    }

}
