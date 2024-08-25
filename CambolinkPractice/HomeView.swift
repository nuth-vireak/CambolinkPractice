//
//  HomeView.swift
//  CambolinkPractice
//
//  Created by KAK-REAK on 23/8/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var currentPage = 0
    
    let images = ["slide1", "slide2", "slide3", "slide4"]
    let timer = Timer.publish(every: 4, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            imageSlider
            
            Text("Our Service")
                .font(.system(size: 20, weight: .medium, design: .rounded))
                .padding(.top, 30)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            serviceMenu
            
            Spacer()
        }
        .padding(20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    fileprivate var imageSlider: some View {
        TabView(selection: $currentPage) {
            ForEach(0..<images.count, id: \.self) { index in
                Image(images[index])
                    .resizable()
                    .scaledToFit()
                    .tag(index)
                    .frame(width: 370, height: 370)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        .frame(width: 370, height: 370)
        .cornerRadius(20)
    }
    
    fileprivate var serviceMenu: some View {
        HStack(spacing: 40) {
            menuView(labelService: "Book Ticket", imageService: "ticket")
            menuView(labelService: "Tracking Package", imageService: "tracking")
        }
        .padding(.top, 30)
        .frame(maxWidth: .infinity)
    }
    
    fileprivate func menuView(labelService: String, imageService: String) -> some View {
        VStack(spacing: 15) {
            Image(imageService)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            
            Text(labelService)
                .font(.system(size: 18, weight: .light, design: .rounded))
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    HomeView()
}
