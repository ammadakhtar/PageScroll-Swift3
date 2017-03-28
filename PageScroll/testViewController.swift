//
//  testViewController.swift
//  PageScroll
//
//  Created by Ammad on 17/01/2017.
//  Copyright © 2017 Ammad. All rights reserved.
//

import UIKit

class testViewController: UIView {
    
    @IBOutlet weak var Scroller: UIScrollView!
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        
        let view = super.hitTest(point, with: event)
        
        if (view == self) {
            return Scroller
        }
        
        return view
        
    }
    
}
