//
//  LandmarkViewModel.swift
//  Landmark
//
//  Created by Nouman Pervez on 16/08/23.
//

import Foundation


class LandmarkViewModel: ObservableObject {
    
    @Published var landmarks: [Landmark] = ResourceLoader().loadLandmarks()
    
}
