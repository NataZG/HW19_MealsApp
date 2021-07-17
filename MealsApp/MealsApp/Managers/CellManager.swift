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
    func configure(_ cell: UITableViewCell, with feedback: Feedback) {
        cell.detailTextLabel?.text = feedback.feedback
        cell.textLabel?.text = feedback.ratingBar
    }
}
