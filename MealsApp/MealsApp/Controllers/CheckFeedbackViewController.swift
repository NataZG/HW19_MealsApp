//
//  CheckFeedbackViewController.swift
//  MealsApp
//
//  Created by Nata on 17.07.2021.
//

import UIKit

class CheckFeedbackViewController: UIViewController {
    @IBOutlet var tableView: UITableView! // Tied with view

    var meal: Meal!
    var meals: [Meal] = []
    var feedback: [Feedback] = []
    let cellController = FeedbackManager()

    override func viewDidLoad() {
        super.viewDidLoad()
       // tableView.dataSource = self
        meals = DataManger.shared.meals
    }
}

// MARK: UITableViewDataSource

extension CheckFeedbackViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        meals.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeedbackCell", for: indexPath)
        
        let feedback = meals[indexPath.row]
        cellController.configureText(for: cell, with: feedback)
        
        return cell
    }
}
