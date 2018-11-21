//
//  ViewController.swift
//  FirstGHProject
//
//  Created by Jonathan Compton on 11/21/18.
//  Copyright © 2018 Jonathan Compton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var revealOrHideButton: UIButton!
    
    var labelIsHidden = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.alpha = 0
    }

    @IBAction func revealOrHideButtonTapped(_ sender: Any) {
        if labelIsHidden {
            UIView.animate(withDuration: 0.3) {
                self.messageLabel.alpha = 1.0
            }
        } else {
            UIView.animate(withDuration: 0.3) {
                self.messageLabel.alpha = 0.0
            }
        }
        labelIsHidden = !labelIsHidden
        setButtonTitle()
        
    }
    
    func setButtonTitle() {
        let title = labelIsHidden ? "Reveal \"Surprise\"" : "Hide Message"
        revealOrHideButton.setTitle(title, for: .normal)
    }
    
}

