//
//  ProductView.swift
//  Fashion
//
//  Created by armin on 9/19/17.
//  Copyright © 2017 armin. All rights reserved.
//

import UIKit

class ProductView: UIViewController {

    var stepperPrice : String! = ""
    
    @IBAction func purchase(_ sender: Any) {
        let alert = UIAlertController(title: "Purchase Complete", message: "Thanks for your shopping", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var imagePreview: UIImageView!
    
    @IBOutlet weak var labelPreview: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var itemCountLabel: UILabel!
    
    @IBAction func stepperCount(_ sender: UIStepper) {
        
        itemCountLabel.text = String(Int(sender.value))
        
        let finalPrice = Double(stepperPrice)! * Double(sender.value)
        
        priceLabel.text = ("$\(Int(finalPrice))")
        
    }
    private var _preview: Products!
    
    var preview : Products {
        get {
            return _preview
        } set {
            _preview = newValue
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        labelPreview.text = preview.title
        
        priceLabel.text = preview.price
        
        let url = URL(string: preview.imageURL)!
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else { return }
            
            DispatchQueue.main.sync() {
                self.imagePreview.image = UIImage(data: data)
            }
        }
        
        task.resume()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        stepperPrice = priceLabel.text?.replacingOccurrences(of: "$", with: "")
    }


}
