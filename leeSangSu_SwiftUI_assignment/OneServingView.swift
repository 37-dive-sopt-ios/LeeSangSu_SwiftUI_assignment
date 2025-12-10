//
//  OneServingView.swift
//  leeSangSu_SwiftUI_assignment
//
//  Created by 이상수 on 12/10/25.
//

import SwiftUI

struct OneServingView: View {
    
    let items: [OneServingItem]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            title
            scrollView
        }
        .padding(.vertical, 20)
    }
        
    private var title: some View {
        HStack {
            Text("우리 동네 한그릇 인기 랭킹")
                .font(.system(size: 18, weight: .semibold))
                .foregroundStyle(Color.white)
            Spacer()
            Text("전체보기 >")
                .font(.system(size: 14, weight: .medium))
                .foregroundStyle(Color.white)
        }
        .padding(.horizontal, 16)
    }
    
    private var scrollView: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(items, id: \.title) { item in
                    OneServingCard(item: item)
                }
            }
            .padding(.horizontal, 16)
        }
    }
}
