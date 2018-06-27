//
//  RatingControl.swift
//  FoodReviewer
//
//  Created by Ramirez Paul E on 6/27/18.
//  Copyright © 2018 Ramirez Paul E. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    //MARK: --Initializer
    override init(frame: CGRect) {
        <#code#>
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    //MARK: Private Methods
    private func setupButtons() {
        let button = UIButton()
        button.backgroundColor = UIColor.red
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
    }
    
}
