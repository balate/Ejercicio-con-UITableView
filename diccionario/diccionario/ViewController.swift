//
//  ViewController.swift
//  diccionario
//
//  Created by Javier Contreras on 17/1/16.
//  Copyright © 2016 Ocon. All rights reserved.
//

import Foundation

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TextView: UITextView!
    
    var FirstString = String ()
    
    override func viewDidLoad() {
        
        TextView.text = FirstString
        
        super.viewDidLoad()
    
    }
}