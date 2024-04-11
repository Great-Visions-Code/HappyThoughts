//
//  AppColors.swift
//  HappyThoughts
//
//  Created by Gustavo Vazquez on 4/7/24.
//

import SwiftUI

struct AppColors {
    
    static let mainBackgroundColor =
        LinearGradient(gradient: Gradient(colors: [
            Color(.black),
            Color("GradientTopColor"),
            Color("GradientMiddleColor"),
            Color("GradientBottomColor")]),
            startPoint: .top,
            endPoint: .bottom)
    
    static let mainButtonColor = Color("MainButtonColor")
}

struct AppColorsPreview: View {
    var body: some View {
        VStack {
            AppColors.mainBackgroundColor
                .ignoresSafeArea()
            Text("Main Background Color")
                .bold()
                .padding()
            Buttons.GeneralButtons(text: "Login",
                                   action: {})
            Text("Main Button Color")
                .bold()
                .padding()
        }
    }
}

struct AppColorsPreview_Preview: PreviewProvider {
    static var previews: some View {
        AppColorsPreview()
    }
}


