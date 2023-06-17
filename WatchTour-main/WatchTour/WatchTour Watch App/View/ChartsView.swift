//
//  ChartsView.swift
//  WatchTour Watch App
//
//  Created by Ganesh on 03/06/23.
//

import SwiftUI

struct ChartsView: View {
    var body: some View {
        TabView {
            BarChartView()
            WedgeChartView()
            RingView()
        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
    }
}

struct ChartsView_Previews: PreviewProvider {
    static var previews: some View {
        ChartsView()
    }
}
