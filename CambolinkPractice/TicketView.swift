//
//  TicketView.swift
//  CambolinkPractice
//
//  Created by KAK-REAK on 23/8/24.
//

import SwiftUI

struct TicketView: View {
    var body: some View {
        VStack {
            Image("map")
                .resizable()
                .scaledToFit()
            
            Text("You don't have any booking yet.")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    TicketView()
}
