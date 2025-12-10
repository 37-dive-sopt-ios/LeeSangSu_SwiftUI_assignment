//
//  OneServingCard.swift
//  leeSangSu_SwiftUI_assignment
//
//  Created by 이상수 on 12/10/25.
//

import SwiftUI

struct OneServingCard: View {
    
    let item: OneServingItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            productImage
            productInfo
        }
        .frame(width: 160)
    }
    
    private var productImage: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.gray.opacity(0.3))
            
            Image(systemName: item.imageName)
                .resizable()
        }
        .frame(width: 160, height: 160)
    }
    
    private var productInfo: some View {
        VStack(alignment: .leading, spacing: 4) {
            storeInfo
            
            Text(item.title)
                .font(.system(size: 13))
                .foregroundColor(.black)
                .lineLimit(2)
            
            priceView
            
            Text("\(item.originalPrice)원")
                .font(.system(size: 11))
                .foregroundColor(.black.opacity(0.7))
                .strikethrough()
            
            Text(item.deliveryInfo)
                .font(.system(size: 11))
                .foregroundColor(.purple)
        }
    }
    
    private var storeInfo: some View {
        HStack {
            Text(item.storeName)
                .font(.system(size: 13))
                .foregroundColor(.gray.opacity(0.8))
                .lineLimit(1)
            
            ratingView
            
            Text("(\(item.reviewCount.formatted()))")
                .font(.system(size: 11))
                .foregroundColor(.black.opacity(0.7))
        }
    }
    
    private var ratingView: some View {
        HStack(spacing: 4) {
            Image(systemName: "star.fill")
                .foregroundColor(.orange)
                .font(.system(size: 11))
            
            Text(String(format: "%.1f", item.rating))
                .font(.system(size: 11))
                .foregroundColor(.black)
        }
    }
    
    private var priceView: some View {
        HStack(spacing: 4) {
            Text("\(item.discountRate)%")
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(.red)
            
            Text("\(item.discountedPrice.formatted())원")
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(.black)
        }
    }
}
