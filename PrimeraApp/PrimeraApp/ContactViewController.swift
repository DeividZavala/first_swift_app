//
//  ContactViewController.swift
//  PrimeraApp
//
//  Created by David Zavala on 22/10/16.
//  Copyright © 2016 David Zavala. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.addSubview(scrollView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        scrollView.contentSize = CGSize(width: 375, height: 800)
    }


}
