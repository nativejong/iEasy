//
//  DemoBViewController.swift
//  Example
//
//  Created by John Blaine on 12/29/20.
//  Copyright © 2020 John Blaine. All rights reserved.
//

import UIKit
import iEasy

class DemoBViewController: UIViewController {
    var easy : iEasy?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.edgesForExtendedLayout = []
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        easy = iEasy(frame: CGRect.zero)
        self.view.addSubview(easy!)

        self.watchAction()
        
        easy?.theme("")
    }
    
    
    func easyTheme() {
        easy?.addImage("Japan", photo: UIImage(named: "japan"), x: 0.0, y: 0.0, w: 1.0, h: 1.0 )

        easy?.addText("Full Name", x: 0.1, y: 0.3, w: 0.8, h: 0.08, photo: UIImage(named: "person") )
        easy?.addText("Password", x: 0.1, y: 0.4, w: 0.8, h: 0.08, photo:  UIImage(named: "key" ) )

        easy?.refresh()
    }
    
    func watchAction() {
                
        easy?.watch({ (a : String?) in
            print( a )
        }, image: { ( a : String?) in
            print( a )
        }, text: { ( a: String?, b : String?, setError : (( _ d : String?, _ e : UIColor?, _ k : Bool ) -> Void)?) in
            
            if ( b == "0000") {
                setError!( "zero", UIColor.red, true )
            } else {
                setError!( "", UIColor.red, true )
            }
            
       }, error: { ( a: String?, b : String?, setError : (( _ d : String?, _ e : UIColor?, _ k : Bool ) -> Void)?) in
       })
        
        
        
    }

    override func viewWillLayoutSubviews() {
        let w = self.view.frame.size.width;
        let h = self.view.frame.size.height;
                    
        easy?.frame = CGRect(x: w * 0.0, y: h * 0.0, width: w * 1.0, height: h * 1.0)
    }

}

