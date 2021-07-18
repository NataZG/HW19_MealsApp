//
//  MealViewController.swift
//  MealsApp
//
//  Created by Nata on 15.07.2021.
//

import UIKit

class MealViewController: UIViewController {
    @IBOutlet var tableView: UITableView! // Tied with view

    var meals: [Meal] = [] // Tied with model
    let cellController = CellManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        meals = DataManger.shared.meals
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "goToMealDetail" else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }

        let meal = meals[indexPath.row]
        let mealDetailVC = segue.destination as! MealDetailViewController
        mealDetailVC.meal = meal
    }
}

// MARK: UITableViewDataSource

extension MealViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        meals.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell", for: indexPath)

        let meal = meals[indexPath.row]
        cellController.configure(cell, with: meal)

        return cell
    }
}


