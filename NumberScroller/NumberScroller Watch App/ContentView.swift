//
//  ContentView.swift
//  NumberScroller Watch App
//
//  Created by Ganesh on 05/06/23.
//

import SwiftUI

struct ContentView: View {
    @State private var number = 0.0
    var body: some View {
        Text("\(number,specifier: "%.1f")")
//            .onChange(of: number, perform: {
//                print($0)
//            })
            .focusable()
            .digitalCrownRotation($number,from: 0.0,through: 12.0,by:0.1,sensitivity: .high,isContinuous: true,isHapticFeedbackEnabled: false)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
