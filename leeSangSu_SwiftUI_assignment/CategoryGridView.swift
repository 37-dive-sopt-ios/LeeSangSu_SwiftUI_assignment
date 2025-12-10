//
//  CategoryGridView.swift
//  leeSangSu_SwiftUI_assignment
//
//  Created by 이상수 on 12/10/25.
//

import SwiftUI

struct CategoryGridView: View {
    let categories = ItemCategory.allCases
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 5)
    
    @State private var selectedCategory: ItemCategory = .food
    
    var body: some View {
        VStack(spacing: 0) {
            categoryTabBar
            
            TabView(selection: $selectedCategory) {
                ForEach(categories) { category in
                    gridPage(category: category)
                        .tag(category)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(height: 200)
            
            bottomSection
        }
    }
        
    private var categoryTabBar: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            ScrollViewReader { proxy in
                HStack(spacing: 24) {
                    ForEach(categories) { category in
                        categoryTab(category: category)
                            .id(category)
                            .onTapGesture {
                                withAnimation {
                                    selectedCategory = category
                                }
                            }
                    }
                }
                .padding(.vertical, 12)
                .onChange(of: selectedCategory) { _, newValue in
                    withAnimation {
                        proxy.scrollTo(newValue, anchor: .center)
                    }
                }
            }
        }
    }
    
    private func categoryTab(category: ItemCategory) -> some View {
        VStack(spacing: 8) {
            Text(category.rawValue)
                .font(.system(
                    size: 16,
                    weight: selectedCategory == category ? .bold : .regular
                ))
                .foregroundColor(selectedCategory == category ? .black : .gray)
            
            Rectangle()
                .fill(selectedCategory == category ? Color.black : Color.clear)
                .frame(height: 2)
        }
    }
    
    private func gridPage(category: ItemCategory) -> some View {
        LazyVGrid(columns: columns, spacing: 20) {
            ForEach(category.items) { item in
                RoundedImageItemView(
                    imageName: item.imageName,
                    title: item.title
                )
            }
        }
        .padding(.top, 12)
    }
        
    private var bottomSection: some View {
        VStack(spacing: 0) {
            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .frame(height: 1)
            
            HStack {
                Text("\(selectedCategory.rawValue)에서 더보기 >")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 12)
        }
    }
}
