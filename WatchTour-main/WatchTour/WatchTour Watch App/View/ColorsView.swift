//
//  ColorsView.swift
//  WatchTour Watch App
//
//  Created by Ganesh on 03/06/23.
//

import SwiftUI

struct ColorsView: View {
    
    @State var colors:[ColorModel] = [ColorModel(name: "Red"),
        ColorModel(name: "Blue"),
        ColorModel(name: "Black"),
        ColorModel(name: "Pink"),
        ColorModel(name: "Yellow")]
    
    var body: some View {
        NavigationView {
            List{
                ForEach(colors){ color in
                    NavigationLink(destination: Text(color.name)) {
                        Text(color.name)
                    }
                }
            }
        }
    }
}

struct ColorsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsView()
    }
}
