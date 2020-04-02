//
//  ViewController.swift
//  MandelbrotTest2
//
//  Created by Michael O'Connell on 3/31/20.
//  Copyright © 2020 Michael O'Connell. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var MandelbrotView: CustomView!
    @IBOutlet weak var ZoomOutButton: UIButton!
    @IBOutlet weak var ZoomInButton: UIButton!
    @IBOutlet weak var MoveLeftButton: UIButton!
    @IBOutlet weak var MoveRightButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        ZoomOutButton.layer.borderWidth = 1
        ZoomOutButton.layer.borderColor = UIColor.black.cgColor
        ZoomOutButton.layer.cornerRadius = 5

        ZoomInButton.layer.borderWidth = 1
        ZoomInButton.layer.borderColor = UIColor.black.cgColor
        ZoomInButton.layer.cornerRadius = 5

        MoveLeftButton.layer.borderWidth = 1
        MoveLeftButton.layer.borderColor = UIColor.black.cgColor
        MoveLeftButton.layer.cornerRadius = 5

        MoveRightButton.layer.borderWidth = 1
        MoveRightButton.layer.borderColor = UIColor.black.cgColor
        MoveRightButton.layer.cornerRadius = 5
    }


}

