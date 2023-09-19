//
//  LandmarkRow.swift
//  Landmark
//
//  Created by Nouman Pervez on 16/08/23.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landMark: Landmark
    var body: some View {
        HStack {
            Image(landMark.imageName).resizable().frame(width: 60, height: 60)
            Text(landMark.name)
            Spacer()
            if(landMark.isFavorite) {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        let landmark = ResourceLoader().loadLandmarks()
        LandmarkRow(landMark: landmark[0])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
