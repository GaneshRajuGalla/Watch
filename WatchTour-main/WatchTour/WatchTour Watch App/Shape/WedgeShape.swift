//
//  WedgeShape.swift
//  WatchTour Watch App
//
//  Created by Ganesh on 04/06/23.
//

import SwiftUI

struct WedgeShape: Shape {
  
    
    let startAngle: Angle
    let endAngle: Angle
    let lineWidth: CGFloat

    func path(in rect: CGRect) -> Path {
        var p = Path()
        
        let center =  CGPoint(x: rect.size.width/2, y: rect.size.width/2)
        let r1 = rect.size.width/2
        p.addArc(center: center, radius: abs(lineWidth - r1), startAngle: startAngle, endAngle: endAngle, clockwise: false)
        p.addArc(center: center, radius: r1, startAngle: endAngle, endAngle: startAngle, clockwise: true)
        p.closeSubpath()
        
        return p
    }
}

struct Wedge{
    var startAngle:Double
    var endAngle:Double
    var color:Color
}
