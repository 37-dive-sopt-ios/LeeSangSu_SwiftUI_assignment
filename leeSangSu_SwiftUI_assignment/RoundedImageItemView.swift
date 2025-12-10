//
//  RoundedImageItemView.swift
//  leeSangSu_SwiftUI_assignment
//
//  Created by 이상수 on 12/10/25.
//

import SwiftUI

struct RoundedImageItemView: View {
    let imageName: String
    let title: String
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 54, height: 54)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
            Text(title)
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(.primary)
        }
        .padding(.horizontal, 2)
    }
}
