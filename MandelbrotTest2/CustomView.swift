//
//  CustomView.swift
//  MandelbrotTest2
//
//  Created by Michael O'Connell on 3/31/20.
//  Copyright © 2020 Michael O'Connell. All rights reserved.
//

import UIKit

class CustomView: UIView {

    override func draw(_ rect: CGRect) {

        super.draw(rect)

        guard let context = UIGraphicsGetCurrentContext()
            else
        {
            print("Error getting current context")
            return
        }

        print("Get Current Context successful")

//        context.setStrokeColor(UIColor.red.cgColor)
//        context.stroke(CGRect(x: 50, y: 50, width: 50, height: 50))

//        for x in 0..<250 {
//            setPixel(context: context, x: x, y: 200, color: .red)
//        }

        for x in 0..<Int(self.frame.width) {
            for y in 0..<Int(self.frame.height) {
                let color = Mandelbrot(Px: x, Py: y)
                setPixel(context: context, x: x, y: y, color: color)
            }
        }

    }
    
    private func setPixel(context: CGContext, x: Int, y: Int, color: UIColor)
    {
        context.setLineWidth(1)
        context.setStrokeColor(color.cgColor)
        context.stroke(CGRect(x: CGFloat(x), y: CGFloat(y), width: 0.5, height: 0.5))
    }

    private func Mandelbrot(Px: Int, Py: Int) -> UIColor {

        let xa: Double = -2.5
        let xb: Double = 1.0

        let ya: Double = -1.0
        let yb: Double = 1.0

        let imgx = self.frame.width
        let imgy = self.frame.height

        let x0 = Double(Px) * (xb - xa) / Double(imgx) + xa
        let y0 = Double(Py) * (yb - ya) / Double(imgy) + ya

//        print("x0: \(x0)")
//        print("y0: \(y0)")

        var x: Double = 0.0
        var y: Double = 0.0

        var iteration: Int = 0
        // let max_iteration: Int = 1000
        let max_iteration: Int = 100


        while (((x * x) + (y * y) <= (2 * 2)) && (iteration < max_iteration)) {
            let xtemp = (x * x) - (y * y) + x0
            y = 2 * x * y + y0
            x = xtemp
            iteration += 1

            //        color := palette[iteration]
            //        plot(Px, Py, color)
        }

        if iteration > 20 {
            print("iteration: \(iteration)")
        }

        let retval: UIColor = UIColor(displayP3Red: CGFloat(iteration)/CGFloat(max_iteration), green: 0, blue: 0, alpha: 1)

        // return UIColor.red
        return retval
    }

}



/*
for each pixel (Px, Py) on the screen do
x0 = scaled x coordinate of pixel (scaled to lie in the Mandelbrot X scale (-2.5, 1))
y0 = scaled y coordinate of pixel (scaled to lie in the Mandelbrot Y scale (-1, 1))
x := 0.0
y := 0.0
iteration := 0
max_iteration := 1000
while (x×x + y×y ≤ 2×2 AND iteration < max_iteration) do
xtemp := x×x - y×y + x0
y := 2×x×y + y0
x := xtemp
iteration := iteration + 1

color := palette[iteration]
plot(Px, Py, color)
*/