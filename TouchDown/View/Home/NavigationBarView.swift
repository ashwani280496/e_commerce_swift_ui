//
//  NavigationBarView.swift
//  TouchDown
//
//  Created by Ashwani Shakya  on 15/07/23.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - PROPERTY
    @State private var isAnimated = false
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
                    .font(.title)
            }
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                }
            
            Spacer()
            
            Button {
                
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .foregroundColor(.black)
                    .font(.title)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 10, height: 10, alignment: .center)
                        .offset(x: 13, y: -14)
                }
            }//: BUTTON
        } //: HSTACK
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
