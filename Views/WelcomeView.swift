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
                            radius: 10)
                    .clipped(antialiased: true)
                    .padding(EdgeInsets(top: 0, 
                                        leading: 0,
                                        bottom: 15,
                                        trailing: 0))
                Text("HappyThoughts")
                    .font(.system(.title,
                                  design: .serif))
                    .bold()
                    .padding()
                
                if viewModel.displayAuthor.isEmpty {
                    Text(viewModel.displayText)
                        .font(.system(.title3,
                                      design: .serif))
                        .padding()
                        .multilineTextAlignment(.center)
                } else {
                    Text(viewModel.displayText)
                        .font(.system(.title3,
                                      design: .serif))                        .padding()
                        .multilineTextAlignment(.center)
                    Text(viewModel.displayAuthor)
                        .font(.system(.subheadline,
                                      design: .serif))                        .padding()
                }
                
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
