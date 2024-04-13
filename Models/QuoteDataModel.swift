//
//  QuoteDataModel.swift
//  HappyThoughts
//
//  Created by Gustavo Vazquez on 4/11/24.
//
import Foundation

struct Quote {
    let text: String
    let author: String
}

struct Tip {
    let advice: String
}

struct QuoteDataModel {
    static let quotes = [
        Quote(text: "The goal of meditation isn’t to control your thoughts, it’s to stop letting them control you.",
              author: "Anonymous"),
        Quote(text: "Mindfulness means being awake. It means knowing what you are doing.", 
              author: "Jon Kabat-Zinn"),
        Quote(text: "The present moment is the only time over which we have dominion.", 
              author: "Thích Nhất Hạnh"),
        Quote(text: "Meditation is not evasion; it is a serene encounter with reality.", 
              author: "Thích Nhất Hạnh"),
        Quote(text: "The mind is everything. What you think you become.", 
              author: "Buddha"),
        Quote(text: "Do not dwell in the past, do not dream of the future, concentrate the mind on the present moment.", 
              author: "Buddha"),
        Quote(text: "Peace comes from within. Do not seek it without.", 
              author: "Buddha"),
        Quote(text: "Mindfulness is a way of befriending ourselves and our experience.", 
              author: "Jon Kabat-Zinn"),
        Quote(text: "Meditation and concentration are the way to a life of serenity.", 
              author: "Baba Ram Dass")
    ]
        static let tips = [
            Tip(advice: "Spend time in nature to ground yourself."),
            Tip(advice: "Practice gratitude by listing things you’re thankful for daily."),
            Tip(advice: "Do one thing at a time to improve focus and mindfulness."),
            Tip(advice: "Use your senses fully to truly experience each moment."),
            Tip(advice: "Find joy in the simple things."),
            Tip(advice: "Let go of the need to control everything."),
    ]
}
