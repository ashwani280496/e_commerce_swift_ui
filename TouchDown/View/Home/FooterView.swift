//
//  FooterView.swift
//  TouchDown
//
//  Created by Ashwani Shakya  on 15/07/23.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We Offer the most cutting edge. comfortable, light weight and durable football helmets at affordable prices")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright © Ashwani \n All rights reserved")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .font(.footnote)
                .fontWeight(.bold)
        } //: VSTACK
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(backgroundColor)
    }
}
