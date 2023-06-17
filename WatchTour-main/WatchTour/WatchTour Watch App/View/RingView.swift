//
//  RingView.swift
//  WatchTour Watch App
//
//  Created by Ganesh on 04/06/23.
//

import SwiftUI

struct RingView: View {
    var body: some View {
        VStack{
            HeaderView(title: "Activity", subTitle: "ring")
            ZStack{
                Circle()
                    .stroke(lineWidth: 20)
                    .fill(Color(.darkGray))
                Circle()
                    .trim(from: 0.5, to: 1)
                    .stroke(Color(.red),style: StrokeStyle(lineWidth: 12, lineCap: .round, lineJoin: .round))
                    .rotationEffect(.degrees(180))
                    .rotation3DEffect(.degrees(180), axis: (x:1,y:0,z:0))
            }
            .frame(width: 130, height: 130)
            .rotationEffect(.degrees(90))
            .padding(.top,10)
        }
    }
}

struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingView()
    }
}
