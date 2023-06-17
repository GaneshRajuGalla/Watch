//
//  ContentView.swift
//  WatchTour Watch App
//
//  Created by Ganesh on 03/06/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented:Bool = false
    
    var body: some View {
        NavigationView {
            List{
                Button {
                    self.isPresented.toggle()
                } label: {
                    Text("Charts")
                }
                .fullScreenCover(isPresented: $isPresented, content: ChartsView.init)
                NavigationLink(destination: ColorsView()) {
                    Text("Colors")
                }.navigationTitle("Home")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
