//
//  Meals.swift
//  MealsApp
//
//  Created by Nata on 15.07.2021.
//

import UIKit

struct Meal {
    
    let name: String
    let image: UIImage
    let notes: String
    
    var rating: Int {
        var ratingSum = 0
        feedbacks.forEach { feedback in
            ratingSum += feedback.rating
        }
        return ratingSum / feedbacks.count
    }
    
    var feedbacks: [Feedback]

    var ratingBar: String {
        String(repeating: "❤️‍🔥", count: rating) // control + command + " "
    }
}

struct Feedback {
    let feedback: String
    let date: Date = Date()
    let rating: Int
    
    var ratingBar: String {
        String(repeating: "❤️‍🔥", count: rating) // control + command + " "
    }
    
    var currentDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        return dateFormatter.string(from: date)
    }
}

