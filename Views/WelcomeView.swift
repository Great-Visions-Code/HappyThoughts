//
//  SwiftUIView.swift
//  HappyThoughts
//
//  Created by Gustavo Vazquez on 4/7/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            AppColors.mainBackgroundColor
                .ignoresSafeArea()
            VStack() {
                Image("WelcomeViewImage")
                    .resizable()
                    .scaledToFill()
        
                Text("HappyThoughts")
                    .font(.largeTitle)
                Text("''Gratefulness Quote Holder''")
                    .padding()
                Buttons.GeneralButtons(text: "Login",
                                       action: {
                    //TODO: Link to HomeView()
                })
                Buttons.GeneralButtons(text: "Sign Up", 
                                       action: {
                    //TODO: Link to SignUpView()
                })
            }
        }
    }
}

struct WelcomeViewPreview_Preview: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
