//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by user165995 on 2/4/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
var landmark: Landmark

var body: some View {
    VStack {
        MapView(coordinate: landmark.locationCoordinate)
            .edgesIgnoringSafeArea(.top)
            .frame(height: 300)

        CircleImage(image: landmark.image)
            .offset(y: -130)
            .padding(.bottom, -130)

        VStack(alignment: .leading) {
            Text(landmark.name)
                .font(.title)

            HStack(alignment: .top) {
                Text(landmark.park)
                    .font(.subheadline)
                Spacer()
                Text(landmark.state)
                    .font(.subheadline)

     }
            }
            .padding()

            Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Preview: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
