//
//  CapsuleView.swift
//  WatchTour Watch App
//
//  Created by Ganesh on 03/06/23.
//

import SwiftUI

struct CapsuleView: View {
    let value:Int
    let day:String
    var body: some View {
        HStack(alignment: .bottom, spacing: 2) {
            VStack{
                VStack(spacing: 2) {
                    Text("\(value)")
                        .font(.system(size:11))
                        .foregroundColor(.gray)
                    Capsule()
                        .frame(width: 10, height: CGFloat(value))
                        .foregroundColor(.red)
                    
                    
                }
                Text(day.uppercased())
                    .font(.system(size:12))
                    .fontWeight(.black)
                    .padding(.top,0)
            }
        }
        .padding(.top,10)
    }
}

struct CapsuleView_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleView(value: 75, day: "S")
    }
}
