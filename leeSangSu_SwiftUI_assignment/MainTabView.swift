//
//  MainTabView.swift
//  leeSangSu_SwiftUI_assignment
//
//  Created by 이상수 on 12/10/25.
//

import SwiftUI

enum TabType: String, CaseIterable {
    case home = "홈"
    case shopping = "장보기/쇼핑"
    case favorite = "찜"
    case orderHistory = "주문내역"
    case myBaemin = "마이배민"
        
    var iconName: String {
        switch self {
        case .home: return "house.fill"
        case .shopping: return "cart.fill"
        case .favorite: return "heart.fill"
        case .orderHistory: return "list.bullet.clipboard.fill"
        case .myBaemin: return "person.fill"
        }
    }
}


struct MainTabView: View {
    @State private var selectedTab: TabType = .home
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            BaeminFeedView()
                .tabItem {
                    Label(TabType.home.rawValue, systemImage: TabType.home.iconName)
                }
                .tag(TabType.home)
            
            EmptyContentView(title: TabType.shopping.rawValue)
                .tabItem {
                    Label(TabType.shopping.rawValue, systemImage: TabType.shopping.iconName)
                }
                .tag(TabType.shopping)
            
            EmptyContentView(title: TabType.favorite.rawValue)
                .tabItem {
                    Label(TabType.favorite.rawValue, systemImage: TabType.favorite.iconName)
                }
                .tag(TabType.favorite)

            EmptyContentView(title: TabType.orderHistory.rawValue)
                .tabItem {
                    Label(TabType.orderHistory.rawValue, systemImage: TabType.orderHistory.iconName)
                }
                .tag(TabType.orderHistory)
            
            EmptyContentView(title: TabType.myBaemin.rawValue)
                .tabItem {
                    Label(TabType.myBaemin.rawValue, systemImage: TabType.myBaemin.iconName)
                }
                .tag(TabType.myBaemin)
        }
    }
}

struct EmptyContentView: View {
    let title: String
    var body: some View {
        VStack {
            Text("\(title) 영역입니다.")
                .font(.largeTitle)
                .foregroundColor(.gray)
        }
    }
}
