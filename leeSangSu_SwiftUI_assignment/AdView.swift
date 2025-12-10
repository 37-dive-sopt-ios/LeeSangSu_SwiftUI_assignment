//
//  AdView.swift
//  leeSangSu_SwiftUI_assignment
//
//  Created by 이상수 on 12/10/25.
//

import SwiftUI

struct AdView: View {
    @State private var currentPage = 0
    let items: [AdBannerModel]
    
    var body: some View {
        TabView(selection: $currentPage) {
            ForEach(AdBannerModel.mockData) { data in
                Image(systemName: data.imageName)
                    .resizable()
                    .scaledToFit()
            }
        }
        .frame(height: 114)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

struct AdBannerModel: Identifiable {
    let id = UUID()
    let imageName: String
}

extension AdBannerModel {
    static let mockData: [AdBannerModel] = [
        .init(imageName: "person.fill"),
        .init(imageName: "person.fill"),
        .init(imageName: "person.fill"),
    ]
}
