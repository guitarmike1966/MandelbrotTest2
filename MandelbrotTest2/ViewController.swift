//
//  ViewController.swift
//  MandelbrotTest2
//
//  Created by Michael O'Connell on 3/31/20.
//  Copyright © 2020 Michael O'Connell. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    let canvas = CustomView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(canvas)
        canvas.frame = view.frame
        
        print("This is the development branch")
    }


}

