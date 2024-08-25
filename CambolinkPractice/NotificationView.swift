//
//  NotificationView.swift
//  CambolinkPractice
//
//  Created by KAK-REAK on 23/8/24.
//

import SwiftUI

struct NotificationView: View {
    
    var showDivider: Bool
    
    var body: some View {
        HStack(
            spacing: 20
        ) {
            Image(systemName: "bell")
                .font(.system(size: 17, weight: .regular, design: .rounded))
            
            VStack(
                alignment: .leading,
                spacing: 10
            ) {
                Text("បញ្ចុះតម្លៃ 15% គ្រប់ទិសដៅធ្វើដំណើរ")
                    .font(.system(size: 16, weight: .semibold, design: .rounded))
                    .lineLimit(1)
                
                Text("បញ្ចុះតម្លៃ 15% គ្រប់ទិសដៅធ្វើដំណើរ")
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .lineLimit(1)
            }
            Spacer()
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .background(.white)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        if showDivider {
            Divider()
                .background(Color.gray.opacity(0.1))
        }
    }
}

#Preview {
    NotificationView(showDivider: true)
}
