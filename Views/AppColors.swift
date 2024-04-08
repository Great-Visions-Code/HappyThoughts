//
//  AppColors.swift
//  HappyThoughts
//
//  Created by Gustavo Vazquez on 4/7/24.
//

import SwiftUI

struct AppColors {
    static let mainBackgroundColor = LinearGradient(gradient: Gradient(colors: [
        //Top to bottom
        Color(red: 2/255,
              green: 4/255,
              blue: 11/255),
        Color(red: 17/255,
              green: 47/255,
              blue: 96/255),
        Color(red: 107/255,
              green: 162/255,
              blue: 255/255),
        Color(red: 255/255,
              green: 218/255,
              blue: 174/255)]),
        startPoint: .top,
        endPoint: .bottom)
    
    static let mainButtonColor = Color(red: 232/255,
                                       green: 145/255,
                                       blue: 88/255)
}

struct AppColorsPreview: View {
    var body: some View {
        VStack {
            AppColors.mainBackgroundColor
                .ignoresSafeArea()
            Text("Main Background Color")
                .bold()
                .padding()
            Rectangle()
                .fill(AppColors.mainButtonColor)
                .frame(width: 350,
                       height: 100)
                .cornerRadius(80)
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


