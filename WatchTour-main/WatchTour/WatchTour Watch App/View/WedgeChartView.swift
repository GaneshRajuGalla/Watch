//
//  WedgeChartView.swift
//  WatchTour Watch App
//
//  Created by Ganesh on 03/06/23.
//

import SwiftUI

struct WedgeChartView: View {
    let wedges = [
        Wedge(startAngle: -43, endAngle: 43, color: Color.blue),
        Wedge(startAngle: 43, endAngle: 150, color: Color.green),
        Wedge(startAngle: 150, endAngle: -43, color: Color.red)
    ]

    var body: some View {
        VStack {
            HeaderView(title: "WEDGE", subTitle: "CHART")
            
            ZStack {
                ForEach(0 ..< wedges.count) {
                    WedgeShape(
                        startAngle: Angle(degrees: self.wedges[$0].startAngle),
                        endAngle: Angle(degrees: self.wedges[$0].endAngle),
                        lineWidth: 24
                    )
                    .foregroundColor(self.wedges[$0].color)
                }
            }.frame(width: 140)
        }
    }
}

//struct WedgeChartView_Previews: PreviewProvider {
//    static var previews: some View {
//        WedgeChartView()
//    }
//}
