//
//  ProductMain.swift
//  Fashion
//
//  Created by armin on 9/19/17.
//  Copyright © 2017 armin. All rights reserved.
//

import UIKit

class ProductMain: UIViewController , UITableViewDelegate , UITableViewDataSource{
    
    @IBAction func backPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var tableView: UITableView!
    
    private var _selectedProductName:String!
    
    var selectedProductName:String {
        get {
            return _selectedProductName
        }
        
        set {
            _selectedProductName = newValue
        }
    }
    
    var items = [Products]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (_selectedProductName == "shirts") {
            let s1 = Products(imageURL: "https://static.modiseh.com/product/image/medium/ag6797_1.jpg" , title: "Celio Navy Blue Long Sleeve Shirt", price: "$34")
            
            let s2 = Products(imageURL: "https://static.modiseh.com/product/image/medium/ag6800_1.jpg" , title: "Celio Blue Long Sleeve Shirt", price: "$22")
            
            let s3 = Products(imageURL: "https://static.modiseh.com/product/image/medium/af1812_1.jpg" , title: "INC Red Short Sleeve T-Shirt" , price: "$29.99")
            
            let s4 = Products(imageURL: "https://static.modiseh.com/product/image/medium/af9917_1.jpg" , title: "Capricorn Navy Blue/Brown Long Sleeve Shirt" , price: "$59.99")
            
            let s5 = Products(imageURL: "https://static.modiseh.com/product/image/medium/ag1352_1.jpg" , title: "Terranova Blue Shirt" , price: "$99.99")
            
            items.append(s1)
            items.append(s2)
            items.append(s3)
            items.append(s4)
            items.append(s5)
        } else if (_selectedProductName == "pants") {
            let p1 = Products(imageURL: "https://static.modiseh.com/product/image/medium/ah3582_1.jpg" , title: "Broad way gray jeans", price: "$89.99")
            
            let p2 = Products(imageURL: "https://static.modiseh.com/product/image/medium/ah3584_1.jpg" , title: "Broad way brown jeans", price: "$79.99")
            
            let p3 = Products(imageURL: "https://static.modiseh.com/product/image/medium/ah3583_1.jpg" , title: "Broad way blue navy jeans", price: "$119.99")
            
            let p4 = Products(imageURL: "https://static.modiseh.com/product/image/medium/ah3585_1.jpg" , title: "Broad way navy jeans", price: "$89.99")
            
            let p5 = Products(imageURL: "https://static.modiseh.com/product/image/medium/ah3597_1.jpg" , title: "Broad way gray jeans", price: "$109.99")
            
            let p6 = Products(imageURL: "https://static.modiseh.com/product/image/medium/ah3592_1.jpg" , title: "Broad way jeans", price: "$79.99")
            
            items.append(p1)
            items.append(p2)
            items.append(p3)
            items.append(p4)
            items.append(p5)
            items.append(p6)
            
        } else if (_selectedProductName == "shoes") {
            let sh1 = Products(imageURL: "https://static.modiseh.com/product/image/medium/ah2712_1.jpg", title: "Adidas Cloudfoam Advantage Clean", price: "$319")
            
            let sh2 = Products(imageURL: "https://static.modiseh.com/product/image/medium/ah2524_1.jpg", title: "Slazenger gray shoes", price: "$69")
            
            let sh3 = Products(imageURL: "https://static.modiseh.com/product/image/medium/ah2523_1.jpg", title: "Slazenger gray casual shoes" , price: "$69")
            
            let sh4 = Products(imageURL: "https://static.modiseh.com/product/image/medium/ah2522_1.jpg", title: "Slazenger black casual shoes" , price: "$69")
            
            let sh5 = Products(imageURL: "https://static.modiseh.com/product/image/medium/cc1832_1.jpg", title: "CR7 Soul Slazenger gray casual shoes" , price: "$69")
            
            let sh6 = Products(imageURL: "https://static.modiseh.com/product/image/medium/cc1850_1.jpg", title: "CR7 Slazenger black casual shoes" , price: "$411")
            
            let sh7 = Products(imageURL: "https://static.modiseh.com/product/image/medium/af3404_1.jpg", title: "Adidas STAN SMITH MID" , price: "$355.99")
            
            let sh8 = Products(imageURL: "https://static.modiseh.com/product/image/medium/ah2716_1.jpg", title: "Adidas Cloudfoam Lite Racer SO" , price: "$69")
            
            items.append(sh1)
            items.append(sh2)
            items.append(sh3)
            items.append(sh4)
            items.append(sh5)
            items.append(sh6)
            items.append(sh7)
            items.append(sh8)
            
        } else if (_selectedProductName == "dresses") {
            
            let d1 = Products(imageURL: "https://static.modiseh.com/product/image/medium/cc8682_1.jpg", title: "Blue Jean Bellefille", price: "$79")
            
            let d2 = Products(imageURL: "https://static.modiseh.com/product/image/medium/af3924_1.jpg", title: "Perie black and white", price: "$95")
            
            let d3 = Products(imageURL: "https://static.modiseh.com/product/image/medium/af3925_1.jpg", title: "Perie Blue dress" , price: "$55")
            
            let d4 = Products(imageURL: "https://static.modiseh.com/product/image/medium/cc4821_1.jpg", title: "Refka Black dress" , price: "$123")
            
            let d5 = Products(imageURL: "https://static.modiseh.com/product/image/medium/ag6715_1.jpg", title: "Desar light brown dress" , price: "$49")
            
            let d6 = Products(imageURL: "https://static.modiseh.com/product/image/medium/ag9251_1.jpg", title: "Oysho Pink gray dress" , price: "$99.99")
            
            items.append(d1)
            items.append(d2)
            items.append(d3)
            items.append(d4)
            items.append(d5)
            items.append(d6)
        } else if (_selectedProductName == "bags") {
            
            let d1 = Products(imageURL: "https://static.modiseh.com/product/image/medium/ah1844_1.jpg", title: "H & M Black Bag", price: "$213")
            
            let d2 = Products(imageURL: "https://static.modiseh.com/product/image/medium/cc9932_1.jpg", title: "Shima Navy blue bag", price: "$59")
            
            let d3 = Products(imageURL: "https://static.modiseh.com/product/image/medium/cc7043_1.jpg", title: "David Jones" , price: "$118")
            
            let d4 = Products(imageURL: "https://static.modiseh.com/product/image/medium/ah3870_1.jpg", title: "Tally Weijl Black Bag" , price: "$145.99")
            
            let d5 = Products(imageURL: "https://static.modiseh.com/product/image/medium/af6211_1.jpg", title: "SUITE BLANCO white Bag" , price: "$89")
            
            items.append(d1)
            items.append(d2)
            items.append(d3)
            items.append(d4)
            items.append(d5)
        }
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as? TableCell {
            
            let shirt = items [indexPath.row]
            
            cell.updateUI(shirts: shirt)
            
            return cell
            
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let product = items [indexPath.row]
        
        performSegue(withIdentifier: "ProductVC", sender: product)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ProductView {
            if let item = sender as? Products {
                destination.preview = item
            }
        }
    }


}
