//
//  DataManager.swift
//  MealsApp
//
//  Created by Nata on 15.07.2021.
//

import Foundation

class DataManger {
    // MARK: Lifecycle

    private init() {}

    // MARK: Internal

    static let shared = DataManger()

    var meals = [Meal(name: "Breakfast",
                      image:  #imageLiteral(resourceName: "avotoast.jpeg"), // imageLiteral
                      notes: "Avocado Toast",
                      feedbacks: [Feedback(feedback: "Pretty much tasty", rating: 4)]),
                 Meal(name: "Starters",
                      image:  #imageLiteral(resourceName: "hummus1"),
                      notes: "Hummus",
                      feedbacks: [Feedback(feedback: "Too sour", rating: 2)]),
                 Meal(name: "Summer sets",
                      image:  #imageLiteral(resourceName: "bowl"),
                      notes: "Veggie Bowl",
                      feedbacks: [Feedback(feedback: "Amazing!", rating: 5)])]
}
