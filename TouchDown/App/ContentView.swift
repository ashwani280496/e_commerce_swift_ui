//
//  ContentView.swift
//  TouchDown
//
//  Created by Ashwani Shakya  on 15/07/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 10) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication
                                        .shared
                                        .connectedScenes
                                        .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                                        .first { $0.isKeyWindow }?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                Spacer()
                
                FooterView()
                    .padding(.horizontal)
            }
            .background(backgroundColor.ignoresSafeArea(.all, edges: .all))
        }.ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
