//
//  TableCell.swift
//  Fashion
//
//  Created by armin on 9/19/17.
//  Copyright © 2017 armin. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {

    @IBOutlet weak var itemPreview: UIImageView!
    
    @IBOutlet weak var itemLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI (shirts : Products) {
        
        itemLabel.text = shirts.title
        
        let url = URL(string: shirts.imageURL)!
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else { return }
            
            DispatchQueue.main.sync() {
                self.itemPreview.image = UIImage(data: data)
            }
        }
        
        task.resume()
    }

}
