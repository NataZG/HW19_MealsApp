//
//  CellManager.swift
//  MealsApp
//
//  Created by Nata on 17.07.2021.
//

import UIKit

class CellManager {
    func configure(_ cell: UITableViewCell, with meal: Meal) {
        cell.textLabel?.text = meal.name
        cell.detailTextLabel?.text = meal.ratingBar
        cell.imageView?.image = meal.image
    }
}

class FeedbackManager {
func configureText(for cell: UITableViewCell, with item: Meal) {
    if let feedbackText = cell as? FeedbackViewCell {
        feedbackText.feedbackText.text = item.feedbacks as? String
        feedbackText.feedbackRating.text = item.ratingBar
    }
}
}
