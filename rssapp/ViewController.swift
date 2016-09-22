//
//  ViewController.swift
//  rssapp
//
//  Created by Andrew van Tonningen on 9/21/16.
//  Copyright © 2016 Landward Lemon Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let myView = UIView()
    let myButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Set myView properties and add it to the UIViewController's main view
        myView.frame = CGRect(x: 0, y: 0, width: UIScreen.mainScreen().bounds.width, height: UIScreen.mainScreen().bounds.height)
        myView.backgroundColor = UIColor.redColor()
        self.view.addSubview(myView)
        
        //Set myButton properties
        myButton.frame = CGRect(x: 0, y: (UIScreen.mainScreen().bounds.height)*(2/3)-20, width: UIScreen.mainScreen().bounds.width, height: 40)
        myButton.backgroundColor = UIColor.greenColor()
        myButton.addTarget(self, action: #selector(didPressButton), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(myButton)
        
    }
    
    func didPressButton() {
        //inverts colors
        myButton.backgroundColor = UIColor.redColor()
        myView.backgroundColor = UIColor.greenColor()
    }
    
    override func viewWillAppear(animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

//class mySecondView: UIView {
//    
//    init() {
//        
//        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
//        
//        self.frame = CGRect(x: 0, y: 0, width: UIScreen.mainScreen().bounds.width, height: UIScreen.mainScreen().bounds.height)
//        
//        self.backgroundColor = UIColor.redColor()
//        
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}

