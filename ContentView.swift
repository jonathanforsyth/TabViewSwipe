//
//  ContentView.swift
//  TestApp
//
//  Created by Jonathan Forsyth on 3/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var tabSelection = 1

    var body: some View {
        TabView(selection: $tabSelection) {
            ProfileFormView(tabSelection: $tabSelection)
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Profile")
                }
                .tag(1)
            InvestFormView(tabSelection: $tabSelection)
                .tabItem {
                    Image(systemName: "dollarsign")
                    Text("Invest")
                }
                .tag(2)
            EarningsView()
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("Results")
                }
                .tag(3)
        }
//        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
