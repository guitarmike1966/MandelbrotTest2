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


    @IBAction func MoveLeftButtonClick(_ sender: Any) {
        let range = MandelbrotView.xb - MandelbrotView.xa
        let move = range / 5

//        print("Original xa: \(MandelbrotView.xa)")
//        print("Original xb: \(MandelbrotView.xb)")

        MandelbrotView.xa -= move
        MandelbrotView.xb -= move
        
//        print("New xa: \(MandelbrotView.xa)")
//        print("New xb: \(MandelbrotView.xb)")

        MandelbrotView.setNeedsDisplay()
    }


    @IBAction func MoveRightButtonClick(_ sender: Any) {
        let range = MandelbrotView.xb - MandelbrotView.xa
        let move = range / 5

//        print("Original xa: \(MandelbrotView.xa)")
//        print("Original xb: \(MandelbrotView.xb)")

        MandelbrotView.xa += move
        MandelbrotView.xb += move
        
//        print("New xa: \(MandelbrotView.xa)")
//        print("New xb: \(MandelbrotView.xb)")

        MandelbrotView.setNeedsDisplay()
    }

    @IBAction func ZoomOutButtonClick(_ sender: Any) {
        let xrange = MandelbrotView.xb - MandelbrotView.xa
        let xmove = xrange / 8

        let yrange = MandelbrotView.yb - MandelbrotView.ya
        let ymove = yrange / 8

        //        print("Original xa: \(MandelbrotView.xa)")
        //        print("Original xb: \(MandelbrotView.xb)")

        MandelbrotView.xa -= xmove
        MandelbrotView.xb += xmove

        MandelbrotView.ya -= ymove
        MandelbrotView.yb += ymove

        //        print("New xa: \(MandelbrotView.xa)")
        //        print("New xb: \(MandelbrotView.xb)")

        MandelbrotView.setNeedsDisplay()
    }
    
    @IBAction func ZoomInButtonClick(_ sender: Any) {
        let xrange = MandelbrotView.xb - MandelbrotView.xa
        let xmove = xrange / 8

        let yrange = MandelbrotView.yb - MandelbrotView.ya
        let ymove = yrange / 8

        //        print("Original xa: \(MandelbrotView.xa)")
        //        print("Original xb: \(MandelbrotView.xb)")

        MandelbrotView.xa += xmove
        MandelbrotView.xb -= xmove

        MandelbrotView.ya += ymove
        MandelbrotView.yb -= ymove

        //        print("New xa: \(MandelbrotView.xa)")
        //        print("New xb: \(MandelbrotView.xb)")

        MandelbrotView.setNeedsDisplay()

    }
}

