//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Mac Pro 15 on 2023/04/03.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            //identifierable 적용후(id파라미터 제거)
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
        //identifierable 적용전
//        List(landmarks, id: \.id) { landmark in
//            LandmarkRow(landmark: landmark)
//
//        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
                   LandmarkList()
                       .previewDevice(PreviewDevice(rawValue: deviceName))
                       .previewDisplayName(deviceName)
               }
    }
}
