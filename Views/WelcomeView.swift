//
//  WelcomeView.swift
//  HappyThoughts
//
//  Created by Gustavo Vazquez on 4/7/24.
//

import SwiftUI

struct WelcomeView: View {
    @StateObject private var viewModel = QuoteDataViewModel()

    var body: some View {
        ZStack {
            AnimatedBackground()
            
            VStack(alignment: .center) {
                Image("WelcomeViewImage")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .shadow(color: .blue.opacity(0.6),
                            radius: 5)
                    .clipped(antialiased: true)
                    .padding(EdgeInsets(top: 0, 
                                        leading: 0,
                                        bottom: 15,
                                        trailing: 0))
                Text("HappyThoughts")
                    .font(.system(.largeTitle,
                                  design: .serif))
                    .bold()
                    .padding()
                    .shadow(radius: 4,
                            x: 0,
                            y: 10)
                
                RandomQuoteDisplay(text: viewModel.displayText, author: viewModel.displayAuthor)
                
                Buttons.GeneralButtons(text: "Login",
                                       action: {
                    // TODO: Link to HomeView()
                })
                Buttons.GeneralButtons(text: "Sign Up",
                                       action: {
                    // TODO: Link to SignUpView()
                })
            }
            .onAppear {
                viewModel.chooseRandomDisplay()
            }
        }
    }
}

struct WelcomeViewPreview_Preview: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
