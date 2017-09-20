//
//  MenCollection.swift
//  Fashion
//
//  Created by armin on 9/19/17.
//  Copyright © 2017 armin. All rights reserved.
//

import UIKit

class MenCollection: UIViewController {
    
    var collectionName : String? = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //Shirt Collection Button
    @IBAction func shirtsPressed(_ sender: Any) {
        collectionName = "shirts"
        performSegue(withIdentifier: "openMenCollectionSegue", sender: collectionName)
        
    }

    //Pants Collection Button
    @IBAction func pantsPressed(_ sender: Any) {
        collectionName = "pants"
        performSegue(withIdentifier: "openMenCollectionSegue", sender: collectionName)
    }
    
    //Shoes Collection Button
    @IBAction func shoesPressed(_ sender: Any) {
        collectionName = "shoes"
        performSegue(withIdentifier: "openMenCollectionSegue", sender: collectionName)
    }
    
    //Preparing Segue for sending collection name to another page for showing data
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ProductMain {
            if let productSender = sender as? String {
                destination.selectedProductName = productSender
            }
            
        }
        
    }
 

}
