//
//  QuoteDataViewModel.swift
//  HappyThoughts
//
//  Created by Gustavo Vazquez on 4/11/24.
//

import Foundation

class QuoteDataViewModel: ObservableObject {
    @Published var displayText: String = ""
    @Published var displayAuthor: String = ""
    
    func chooseRandomDisplay() {
        if Bool.random() {
            let randomQuote = QuoteDataModel.quotes.randomElement()!
            displayText = "\"\(randomQuote.text)\""
            displayAuthor = "- \(randomQuote.author)"
        } else {
            let randomTip = QuoteDataModel.tips.randomElement()!
            displayText = randomTip.advice
            displayAuthor = ""
        }
    }
}
