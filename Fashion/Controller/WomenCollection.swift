//
//  WomenCollection.swift
//  Fashion
//
//  Created by armin on 9/19/17.
//  Copyright © 2017 armin. All rights reserved.
//

import UIKit

class WomenCollection: UIViewController {

    var collectionName : String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    //Dress Collection Button
    @IBAction func dressCltPressed(_ sender: Any) {
        collectionName = "dresses"
        performSegue(withIdentifier: "openWomenCollectionSegue", sender: collectionName)
    }
    
    //Bags Collection Button
    @IBAction func bagsCltPressed(_ sender: Any) {
        
        collectionName = "bags"
        performSegue(withIdentifier: "openWomenCollectionSegue", sender: collectionName)
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
