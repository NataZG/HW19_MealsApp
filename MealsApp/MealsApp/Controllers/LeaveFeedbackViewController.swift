//
//  LeaveFeedbackViewController.swift
//  MealsApp
//
//  Created by Nata on 17.07.2021.
//

import UIKit

class LeaveFeedbackViewController: UIViewController {

    @IBOutlet weak var yourFeeback: UILabel!

    weak var delegate: FeedbackViewCellDelegate?

    @IBOutlet weak var feedbackText: UITextView!

    @IBOutlet weak var rating: UISegmentedControl!

    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func segmentAction(_ sender: UISegmentedControl?) {
    }

    @IBAction func saveFeedback(_ sender: UIButton) {
        delegate?.update(feedback: feedbackText.text)
    }

}

