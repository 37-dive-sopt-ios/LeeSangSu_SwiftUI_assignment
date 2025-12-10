//
//  ItemCategory.swift
//  leeSangSu_SwiftUI_assignment
//
//  Created by 이상수 on 12/10/25.
//

import SwiftUI

enum ItemCategory: String, CaseIterable, Identifiable {
    case food = "음식"
    case electronics = "가전제품"
    case pet = "귀여운!!! 반려동물!!!"
    case fashion = "패션 아이템 보고가셔~~"
    case beauty = "뷰티"
    
    var id: String { rawValue }
    
    var items: [ItemModel] {
        switch self {
        case .food:
            return ItemCategory.foodItems
        case .electronics:
            return ItemCategory.electronicsItems
        case .pet:
            return ItemCategory.petItems
        case .fashion:
            return ItemCategory.fashionItems
        case .beauty:
            return ItemCategory.beautyItems
        }
    }
    
    private static let foodItems = [
        ItemModel(imageName: "fork.knife", title: "한식"),
        ItemModel(imageName: "cup.and.saucer", title: "카페"),
        ItemModel(imageName: "leaf", title: "샐러드"),
        ItemModel(imageName: "fish", title: "회/초밥"),
        ItemModel(imageName: "flame", title: "치킨"),
        ItemModel(imageName: "cup.and.saucer.fill", title: "디저트"),
        ItemModel(imageName: "takeoutbag.and.cup.and.straw", title: "패스트푸드"),
        ItemModel(imageName: "wineglass", title: "술집"),
        ItemModel(imageName: "globe.asia.australia", title: "아시안"),
        ItemModel(imageName: "birthday.cake", title: "베이커리")
    ]
    
    private static let electronicsItems = [
        ItemModel(imageName: "tv", title: "TV"),
        ItemModel(imageName: "refrigerator", title: "냉장고"),
        ItemModel(imageName: "washer", title: "세탁기"),
        ItemModel(imageName: "air.conditioner.horizontal", title: "에어컨"),
        ItemModel(imageName: "laptopcomputer", title: "노트북"),
        ItemModel(imageName: "iphone", title: "스마트폰"),
        ItemModel(imageName: "headphones", title: "이어폰"),
        ItemModel(imageName: "camera", title: "카메라"),
        ItemModel(imageName: "printer", title: "프린터"),
        ItemModel(imageName: "fanblades", title: "선풍기")
    ]
    
    private static let petItems = [
        ItemModel(imageName: "pawprint", title: "사료"),
        ItemModel(imageName: "gift", title: "간식"),
        ItemModel(imageName: "house", title: "하우스"),
        ItemModel(imageName: "allergens", title: "장난감"),
        ItemModel(imageName: "cross.case", title: "의료용품"),
        ItemModel(imageName: "bandage", title: "위생용품"),
        ItemModel(imageName: "bag", title: "이동가방"),
        ItemModel(imageName: "tent", title: "캣타워"),
        ItemModel(imageName: "scissors", title: "미용용품"),
        ItemModel(imageName: "book", title: "훈련용품")
    ]
    
    private static let fashionItems = [
        ItemModel(imageName: "tshirt", title: "상의"),
        ItemModel(imageName: "figure.walk", title: "하의"),
        ItemModel(imageName: "shoe", title: "신발"),
        ItemModel(imageName: "bag", title: "가방"),
        ItemModel(imageName: "eyeglasses", title: "안경"),
        ItemModel(imageName: "watch", title: "시계"),
        ItemModel(imageName: "shield.lefthalf.filled", title: "모자"),
        ItemModel(imageName: "briefcase", title: "지갑"),
        ItemModel(imageName: "scarf", title: "악세서리"),
        ItemModel(imageName: "suitcase", title: "캐리어")
    ]
    
    private static let beautyItems = [
        ItemModel(imageName: "paintbrush", title: "메이크업"),
        ItemModel(imageName: "drop", title: "스킨케어"),
        ItemModel(imageName: "eyedropper", title: "에센스"),
        ItemModel(imageName: "aqi.medium", title: "선크림"),
        ItemModel(imageName: "face.smiling", title: "마스크팩"),
        ItemModel(imageName: "comb", title: "헤어"),
        ItemModel(imageName: "sparkles", title: "향수"),
        ItemModel(imageName: "hand.raised", title: "네일"),
        ItemModel(imageName: "circle.hexagongrid", title: "클렌징"),
        ItemModel(imageName: "bubbles.and.sparkles", title: "바디케어")
    ]
}
