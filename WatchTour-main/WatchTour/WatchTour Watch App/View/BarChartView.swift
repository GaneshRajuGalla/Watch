//
//  BarChartView.swift
//  WatchTour Watch App
//
//  Created by Ganesh on 03/06/23.
//

import SwiftUI

struct BarChartView: View {
    var body: some View {
        VStack(spacing:0){
            HeaderView(title: "bar", subTitle: "charts")
            HStack(alignment: .bottom){
                CapsuleView(value: 75, day: "s")
                CapsuleView(value: 100, day: "m")
                CapsuleView(value: 50, day: "t")
                CapsuleView(value: 25, day: "w")
                CapsuleView(value: 40, day: "t")
                CapsuleView(value: 25, day: "f")
                CapsuleView(value: 40, day: "s")
            }
        }
    }
}

struct BarChartView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartView()
    }
}
