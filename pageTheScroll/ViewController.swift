//
//  ViewController.swift
//  pageTheScroll
//
//  Created by Felipe Montoya on 10/4/17.
//  Copyright © 2017 Felipe Montoya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var images = [UIImageView] ()
    var contentWidth:CGFloat = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        // set the images in the array.
        for index in 0...2 {
            let image = UIImage(named: "icon\(index).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            // set the new midPoint for use in scrolView
            var newMidPoint: CGFloat = 0.0
            newMidPoint = view.frame.midX + view.frame.width*CGFloat(index)
            
            contentWidth += newMidPoint
            
            // Add more views so scrol can scroll.
            
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newMidPoint - 75, y: (view.frame.size.height/2)-75, width: 150, height: 150)
            scrollView.contentSize = CGSize (width: contentWidth, height: view.frame.size.height)
            
        }

    }



}

