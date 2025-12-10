//
//  OneServingItem.swift
//  leeSangSu_SwiftUI_assignment
//
//  Created by 이상수 on 12/10/25.
//

import Foundation

struct OneServingItem {
    let imageName: String
    let storeName: String
    let rating: Double
    let reviewCount: Int
    let title: String
    let originalPrice: Int
    let discountRate: Int
    let discountedPrice: Int
    let deliveryInfo: String
}

extension OneServingItem {
    static let mockData: [OneServingItem] = [
        OneServingItem(
            imageName: "person.fill",
            storeName: "백억보쌈제육",
            rating: 5.0,
            reviewCount: 1973,
            title: "[든든한 한끼] 보쌈 막국수",
            originalPrice: 16000,
            discountRate: 25,
            discountedPrice: 12000,
            deliveryInfo: "최소주문금액 없음"
        ),
        OneServingItem(
            imageName: "person.fill",
            storeName: "백억보쌈제육",
            rating: 4.8,
            reviewCount: 542,
            title: "(1인 피자) + 사이드 Set",
            originalPrice: 20000,
            discountRate: 30,
            discountedPrice: 14000,
            deliveryInfo: "최소주문금액 없음"
        ),
        OneServingItem(
            imageName: "person.fill",
            storeName: "백억보쌈제육",
            rating: 4.9,
            reviewCount: 1234,
            title: "[든든한 한끼] 돈가스",
            originalPrice: 25000,
            discountRate: 20,
            discountedPrice: 20000,
            deliveryInfo: "최소주문금액 없음"
        )
    ]
}
