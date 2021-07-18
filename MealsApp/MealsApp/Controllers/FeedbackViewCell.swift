//
//  FeedbackViewCell.swift
//  MealsApp
//
//  Created by Nata on 17.07.2021.
//

import UIKit

protocol FeedbackViewCellDelegate: AnyObject {
    func update (feedback: String)
}

class FeedbackViewCell: UITableViewCell {

    @IBOutlet weak var feedbackDate: UIStackView!
    @IBOutlet weak var feedbackText: UILabel!
    @IBOutlet weak var feedbackRating: UILabel!
    
     func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? LeaveFeedbackViewController else { return }
        destination.delegate = self
    }
}

extension FeedbackViewCell: FeedbackViewCellDelegate {
    func update(feedback: String) {
        feedbackText.text = feedback
    }
    
}
