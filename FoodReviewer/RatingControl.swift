//
//  RatingControl.swift
//  FoodReviewer
//
//  Created by Ramirez Paul E on 6/27/18.
//  Copyright © 2018 Ramirez Paul E. All rights reserved.
//
// This is a custom subclass of UIStackview

import UIKit

class RatingControl: UIStackView {
    
    //MARK: --Properties
    private var ratingButtons = [UIButton]()
    
    var rating = 0
    
    //MARK: --Initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: --Button Action
    @objc func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }
    
    //MARK: Private Methods
    private func setupButtons() {
        
        for _ in 0..<5 {
            
            let button = UIButton()
            button.backgroundColor = UIColor.red
            
            // button properties
            
            // disable default constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            
            // add constraints
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
            
            
            // Setup the button action
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            
            // Add the button to the stack
            addArrangedSubview(button)
            
            // Add the new button to the rating button array
            ratingButtons.append(button)
        }
    }
    
}
