//
//  HeaderView.swift
//  WatchTour Watch App
//
//  Created by Ganesh on 03/06/23.
//

import SwiftUI

struct HeaderView: View {
    let title:String
    let subTitle:String
    var body: some View {
        HStack(spacing: 0) {
            Text(title.uppercased())
                .fontWeight(.heavy)
            Text(subTitle.uppercased())
                .fontWeight(.thin)
        }
        .foregroundColor(.red)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "BAR", subTitle: "CHARTS")
    }
}
