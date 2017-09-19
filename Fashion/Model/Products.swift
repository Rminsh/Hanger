//
//  Shirts.swift
//  Fashion
//
//  Created by armin on 9/19/17.
//  Copyright © 2017 armin. All rights reserved.
//

import Foundation

class Products {
    private var _imageURL: String!
    private var _title : String!
    private var _price : String!
    
    var imageURL : String {
        return _imageURL
    }
    
    var title : String {
        return _title
    }
    
    var price :String {
        return _price
    }
    
    init(imageURL: String , title: String , price: String) {
        
        _imageURL = imageURL
        _title = title
        _price = price
        
    }
}
