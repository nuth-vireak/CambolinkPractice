//
//  ContentView.swift
//  CambolinkPractice
//
//  Created by KAK-REAK on 23/8/24.
//

import SwiftUI

struct ContentView: View {
    
    var notifications = Array(0..<4)
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    
    var body: some View {
        TabView {
            NavigationStack {
                HomeView()
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbarBackground(Color.myPrimaryColor, for: .navigationBar)
                    .toolbarBackground(.visible, for: .navigationBar)
                    .toolbarColorScheme(.dark, for: .navigationBar)
                    .background(Color.gray.opacity(0.1).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }
            
            NavigationStack {
                TicketView()
                    .navigationTitle("Ticket")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbarBackground(Color.myPrimaryColor, for: .navigationBar)
                    .toolbarBackground(.visible, for: .navigationBar)
                    .toolbarColorScheme(.dark, for: .navigationBar)
                    .background(Color.gray.opacity(0.1).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
            }
            .tabItem {
                Label("Ticket", systemImage: "ticket")
            }
            
            NavigationStack {
                ScrollView {
                    VStack(
                        spacing: 0
                    ) {
                        ForEach(notifications.indices, id: \.self) { index in
                            NotificationView(showDivider: index != notifications.count - 1)
                        }
                    }
                    .navigationTitle("Notification")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbarBackground(Color.myPrimaryColor, for: .navigationBar)
                    .toolbarBackground(.visible, for: .navigationBar)
                    .toolbarColorScheme(.dark, for: .navigationBar)
                }
                .background(Color.gray.opacity(0.1).edgesIgnoringSafeArea(.all))
            }
            .tabItem {
                Label("Notification", systemImage: "bell")
            }
        }
        .accentColor(Color.myPrimaryColor)
    }
}

#Preview {
    ContentView()
}
