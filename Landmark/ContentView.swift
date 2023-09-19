//
//  ContentView.swift
//  Landmark
//
//  Created by Nouman Pervez on 17/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            LandmarkList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
