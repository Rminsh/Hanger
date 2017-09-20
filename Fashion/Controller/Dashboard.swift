//
//  ViewController.swift
//  Fashion
//
//  Created by armin on 9/4/17.
//  Copyright © 2017 armin. All rights reserved.
//


import UIKit

class Dashboard: UIViewController{

    private var collectionName : String? = ""
    
    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]()
    
    //new dresses collection's button
    @IBAction func dressCltPressed(_ sender: Any) {
        collectionName = "dresses"
        performSegue(withIdentifier: "dashboardVC", sender: collectionName)
    }
    
    //new shirts collection's button
    @IBAction func shirtCltPressed(_ sender: Any) {
        collectionName = "shirts"
        performSegue(withIdentifier: "dashboardVC", sender: collectionName)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //  <<Check Connection Network for preparing load images >> //
        if Reachability.isConnectedToNetwork(){
            print("Connected!")
        }else{
            let alert = UIAlertController(title: "Network Error", message: "Failed to load images from network\nCheck your connection", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        // Loading header scroll view's images
        var contentWidth : CGFloat = 0.0
        
        for x in 1...3 {
            let image = UIImage(named: "HERO\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = scrollView.frame.size.width * CGFloat(x-1)
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            
            imageView.frame = CGRect(x:newX, y:0, width: scrollView.frame.size.width, height: scrollView.frame.size.height)
            imageView.contentMode = .scaleAspectFill
        }
        
        scrollView.contentSize = CGSize(width: contentWidth, height: scrollView.frame.size.height)
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
