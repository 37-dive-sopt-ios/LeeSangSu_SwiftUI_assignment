//
//  SearchBar.swift
//  leeSangSu_SwiftUI_assignment
//
//  Created by 이상수 on 12/10/25.
//

import SwiftUI

struct SearchBar: View {
    @State private var searchText: String = ""
    
    var body: some View {
        searchBar
            .padding(.horizontal, 9)
            .padding(.bottom, 7)
            .background(.white)
    }
    
    var searchBar: some View {
        HStack(spacing: 12) {
            TextField("찾아라! 맛있는 음식과 맛집", text: $searchText)
                .font(.system(size: 14))
                .foregroundColor(.black)
            
            Image(systemName: "magnifyingglass")
                .font(.system(size: 20))
                .foregroundColor(.black.opacity(0.8))
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.gray, lineWidth: 1)
        )
    }
}
