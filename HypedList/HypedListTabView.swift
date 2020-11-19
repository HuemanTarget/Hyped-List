//
//  ContentView.swift
//  HypedList
//
//  Created by PompousPro on 11/19/20.
//

import SwiftUI

struct HypedListTabView: View {
    var body: some View {
        TabView {
            UpcomingView()
                .tabItem {
                    Image(
                    Text("Upcoming")
                }
            Text("Hello 2")
                .tabItem {
                    Text("Discover")
                }
            Text("Hello 3")
                .tabItem {
                    Text("Past")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HypedListTabView()
    }
}
