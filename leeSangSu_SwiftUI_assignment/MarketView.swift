//
//  MarketView.swift
//  leeSangSu_SwiftUI_assignment
//
//  Created by 이상수 on 12/10/25.
//

import SwiftUI

struct MarketView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 9) {
                ForEach(MarketMock.mockData) { item in
                    RoundedImageItemView(imageName: item.imageName, title: item.title)
                }
            }
            .padding(.vertical, 3)
        }
    }
}

enum MarketMock {
    static let mockData: [ItemModel] = [
        .init(imageName: "person.fill", title: "B마트"),
        .init(imageName: "person.fill", title: "CU"),
        .init(imageName: "person.fill", title: "이마트슈퍼"),
        .init(imageName: "person.fill", title: "홈플러스"),
        .init(imageName: "person.fill", title: "GS25"),
        .init(imageName: "person.fill", title: "세븐일레븐"),
        .init(imageName: "person.fill", title: "B마트"),
    ]
}
