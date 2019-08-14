//
//  ViewController.swift
//  app2
//
//  Created by Karthik on 14/08/19.
//  Copyright © 2019 Karthik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
        let nc = NotificationCenter.default
        nc.addObserver(self, selector: #selector(getData), name: Notification.Name("AppInput"), object: nil)
    }
    
    @objc func getData(){
        lbl.text =  delegate.message

    }
    
    let delegate = UIApplication.shared.delegate as! AppDelegate
   
    
    var msg : String?

    @IBOutlet var lbl: UILabel!
    
}

