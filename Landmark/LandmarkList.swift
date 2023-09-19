//
//  LandmarkList.swift
//  Landmark
//
//  Created by Nouman Pervez on 16/08/23.
//

import SwiftUI

struct LandmarkList: View {
    
    @StateObject private var landmarkVM = LandmarkViewModel()
    @State private var isFavouritesEnabled = true
    
    var body: some View {
        
        List {
            Toggle(isOn: $isFavouritesEnabled) {
                Text("Favorites Only")
            }
            
            let landmarks = calculateLandmarksToDisplay()
            ForEach(landmarks) { landmark in
                LandmarkRow(landMark: landmark)
            }
        }.navigationTitle("Landmark")
    }
    
    private func calculateLandmarksToDisplay() -> [Landmark] {
        landmarkVM.landmarks.filter { landmark in
            return (!isFavouritesEnabled || landmark.isFavorite)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
