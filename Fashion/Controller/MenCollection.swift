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
    @IBAction func shirtsPressed(_ sender: Any) {
        collectionName = "shirts"
        performSegue(withIdentifier: "openMenCollectionSegue", sender: collectionName)
        
    }

    @IBAction func pantsPressed(_ sender: Any) {
        collectionName = "pants"
        performSegue(withIdentifier: "openMenCollectionSegue", sender: collectionName)
    }
    
    @IBAction func shoesPressed(_ sender: Any) {
        collectionName = "shoes"
        performSegue(withIdentifier: "openMenCollectionSegue", sender: collectionName)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ProductMain {
            if let productSender = sender as? String {
                destination.selectedProductName = productSender
            }
            
        }
        
    }
 

}
