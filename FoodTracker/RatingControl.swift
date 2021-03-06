//
//  RatingControl.swift
//  FoodTracker
//
//  Created by g7skim on 1/12/17.
//
//

import UIKit

class RatingControl: UIStackView {
    //MARK: Properties
    private var ratingButtons = [UIButton]()
    
    var rating = 0
    //MARK: Initialisation
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()

    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()

    }
    //MARK: Button Action
    func ratingButtonTapped(button: UIButton) {
        print ("Button pressed!")
    }
    //MARK: Private Methods
    private func setupButtons() {
        //Create the button
        let button = UIButton()
        button.backgroundColor = UIColor.red
        //Add constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        //Setup the buton action
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
        //Add the button to the stack
        addArrangedSubview(button)
        
    }
    }
