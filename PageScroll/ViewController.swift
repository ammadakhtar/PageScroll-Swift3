//
//  ViewController.swift
//  PageScroll
//
//  Created by Ammad on 16/01/2017.
//  Copyright © 2017 Ammad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ScrollView: UIScrollView!
    var images = [UIImageView]()
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool)
    {
        var contentWidth : CGFloat = 0.0
        for x in 0...2
        {
            
            let image = UIImage(named:"icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            
            var NewX : CGFloat = 0.0
            
            NewX = ScrollView.frame.size.width / 2 + ScrollView.frame.size.width * CGFloat(x)
            contentWidth += NewX
            ScrollView.addSubview(imageView)
            imageView.frame = CGRect(x: NewX - 75, y: (ScrollView.frame.size.height / 2) - 75, width: 150, height: 150)
        }
        ScrollView.clipsToBounds = false
        ScrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }
}

