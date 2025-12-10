//
//  BaeminFeedView.swift
//  leeSangSu_SwiftUI_assignment
//
//  Created by 이상수 on 12/10/25.
//

import SwiftUI

struct BaeminFeedView: View {
    
    @State private var headerMinY: CGFloat = 0
    let headerHeight: CGFloat = 60
    private let searchBar = SearchBar()
    
    var body: some View {
        ZStack(alignment: .top) {
            Color(.white)
                .ignoresSafeArea()
            
            ScrollView {
                VStack {
                    TopNavigationBar()

                    searchBar
                        .background(GeometryReader { geo -> Color in
                            let minY = geo.frame(in: .global).minY
                            DispatchQueue.main.async {
                                headerMinY = minY
                            }
                            return Color.clear
                        })
                        .opacity(isSticky ? 0 : 1)
                    sections
                }
                .padding(.bottom, 100)
            }
            
            if isSticky {
                searchBar
            }
        }
    }
    
    private var isSticky: Bool {
        headerMinY < 60
    }
    
    var sections: some View {
        VStack(spacing: 10) {
            VStack(spacing: 0) {
                BMartView()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .background(bMartBgColor)
                CategoryGridView()
                    .padding(.horizontal)
                    .background(.white)
            }
            
            MarketView()
                .padding()
                .background(.white)
            
            AdView(items: AdBannerModel.mockData)
                .background(.white)
            
            OneServingView(items: OneServingItem.mockData)
                .padding(.horizontal)
                .background(oneServingBgColor)
        }
        .background(.gray.opacity(0.2))
    }
}

extension BaeminFeedView {
    var bMartBgColor: LinearGradient {
        LinearGradient(
            gradient: Gradient(colors: [
                Color.lightMint,
                Color.white
            ]),
            startPoint: .bottom,
            endPoint: .top
        )
    }
    
    var oneServingBgColor: LinearGradient {
        LinearGradient(
            gradient: Gradient(colors: [
                Color.lightPurple,
                Color.white
            ]),
            startPoint: .top,
            endPoint: .center
        )
    }
}
