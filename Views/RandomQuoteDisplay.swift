//
//  RandomQuoteDisplay.swift
//  HappyThoughts
//
//  Created by Gustavo Vazquez on 4/12/24.
//

import SwiftUI

struct RandomQuoteDisplay: View {
    var text: String
    var author: String

    var body: some View {
        if author.isEmpty {
            // If author.isEmpty = true. Display advice.
            Text(text)
                .font(.system(.title3, 
                              design: .serif))
                .foregroundStyle(.opacity(0.8))
                .padding()
                .multilineTextAlignment(.center)
                .background(.white.opacity(0.1))
                .cornerRadius(8)
                .frame(maxWidth: 390)
                .shadow(radius: 4,
                        x: 0,
                        y: 10)
        } else {
            // Display both quote and the author
            VStack(alignment: .center, spacing: 10) {
                Text(text)
                    .font(.system(.title3, 
                                  design: .serif))
                    .foregroundStyle(.opacity(0.8))
                    .padding(EdgeInsets(top: 16,
                                        leading: 4,
                                        bottom: 4,
                                        trailing: 4))
                    .multilineTextAlignment(.center)
                Text(author)
                    .font(.system(.subheadline, 
                                  design: .serif))
                    .foregroundStyle(.opacity(0.8))
                    .padding(EdgeInsets(top: 4,
                                        leading: 4,
                                        bottom: 4,
                                        trailing: 4))
            }
            .background(.white.opacity(0.1))
            .cornerRadius(8)
            .frame(maxWidth: 390)
            .shadow(radius: 4,
                    x: 0,
                    y: 10)
        }
    }
}

struct RandomQuoteDisplay_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            
            
            AppColors.mainBackgroundColor
            
            VStack {
                RandomQuoteDisplay(text: "\"I said this quote.. \"",
                                   author: "Someone")
            }
        }
    }
}
