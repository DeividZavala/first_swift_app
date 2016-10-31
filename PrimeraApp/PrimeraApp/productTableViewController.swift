//
//  productTableViewController.swift
//  PrimeraApp
//
//  Created by David Zavala on 29/10/16.
//  Copyright © 2016 David Zavala. All rights reserved.
//

import UIKit

class productTableViewController: UITableViewController {
    
    var Products : [Product]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let product1 = Product()
        let product2 = Product()
        let product3 = Product()
        let product4 = Product()
        
        product1.name = "Primer producto"
        product1.productImage = "phone-fullscreen1"
        product1.cellImage = "image-cell1"
        
        product2.name = "Segindo producto"
        product2.productImage = "phone-fullscreen2"
        product2.cellImage = "image-cell2"
        
        product3.name = "Tercer producto"
        product3.productImage = "phone-fullscreen3"
        product3.cellImage = "image-cell3"
        
        product4.name = "Cuarto producto"
        product4.productImage = "phone-fullscreen4"
        product4.cellImage = "image-cell4"
        
        Products = [product1, product2, product3, product4]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let p = Products{
            return p.count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        
        let product = Products?[indexPath.row]

        if let p = product{
            cell.textLabel?.text = p.name
            if let i = p.cellImage{
                cell.imageView?.image = UIImage(named:i)
            }
        }
        
        
        return cell
        
    }
    
    override func prepare(for segue:UIStoryboardSegue,sender:Any?){
        if segue.identifier == "ShowProduct"{
            
            let productVC = segue.destination as? ProductViewController
            
            guard let cell = sender as? UITableViewCell,
                  let indexPath = tableView.indexPath(for: cell)else{
                    return
            }
            
                    productVC?.producto = Products?[indexPath.row]
            
            }
            
        }
    }


