//
//  ProductViewController.swift
//  PrimeraApp
//
//  Created by David Zavala on 21/10/16.
//  Copyright © 2016 David Zavala. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    var producto:Product?
    
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if let p = producto{
            productNameLabel.text = p.name
            if let i = p.productImage{
                productImageView.image = UIImage(named:i)
            }
        }
        
        
    }

    @IBAction func addToCartPressed(_ sender: AnyObject) {
        print("a ver si ya jala esta madre")
    }

}
