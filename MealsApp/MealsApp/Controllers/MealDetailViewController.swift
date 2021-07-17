//
//  MealDetailViewController.swift
//  MealsApp
//
//  Created by Nata on 15.07.2021.
//

import UIKit

class MealDetailViewController: UIViewController {

    @IBOutlet var mealStackView: UIStackView!
    
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var mealRatingLabel: UILabel!
    @IBOutlet var mealNotesLabel: UILabel!
    //@IBOutlet var mealDateLabel: UILabel!
    
    var meal: Meal!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(with: view.bounds.size)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        updateUI(with: size)
    }
    
    func updateUI(with size: CGSize) {
        let isVertical = size.width < size.height
        mealStackView.axis = isVertical ? .vertical : .horizontal
        
        title = meal.name
        imageView.image = meal.image
        mealRatingLabel.text = meal.ratingBar
        mealNotesLabel.text = meal.notes
        //mealDateLabel.text = meal.currentDate
    }
}
