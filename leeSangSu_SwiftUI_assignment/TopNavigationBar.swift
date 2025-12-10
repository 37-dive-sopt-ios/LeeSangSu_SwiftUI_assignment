//
//  TopNavigationBar.swift
//  leeSangSu_SwiftUI_assignment
//
//  Created by 이상수 on 12/10/25.
//

import SwiftUI

struct TopNavigationBar: View {
    var body: some View {
        navigationButtons
            .padding(.horizontal)
            .background(Color.white)
    }
    
    private var navigationButtons: some View {
        HStack(spacing: 16) {
            locationButton
            Spacer()
            iconButtons
        }
    }
    
    private var locationButton: some View {
        HStack(spacing: 4) {
            Text("우리집")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.black)
            
            Image(systemName: "chevron.down")
                .font(.system(size: 12, weight: .semibold))
                .foregroundColor(.black)
        }
    }
    
    private var iconButtons: some View {
        HStack(spacing: 16) {
            Button(action: {}) {
                Image("percent")
                    .font(.system(size: 20))
            }
            
            Button(action: {}) {
                Image(systemName: "bell")
                    .font(.system(size: 20))
                    .foregroundColor(.black)
            }
            
            Button(action: {}) {
                Image(systemName: "cart")
                    .font(.system(size: 20))
                    .foregroundColor(.black)
            }
        }
    }
}
