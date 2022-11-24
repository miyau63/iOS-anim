//
//  RadioButtonController.swift
//  RickMortyGroupProject
//
//  Created by MacStud on 16.11.2022.
//  Copyright © 2022 MacStud. All rights reserved.
//

import UIKit

class RadioButtonController: NSObject {
    var buttonsArray: [UIButton]! {
        didSet {
            for b in buttonsArray {
                b.setBackgroundImage(UIImage(named: "radio-off"), for: .normal)
                b.setBackgroundImage(UIImage(named: "radio-on"), for: .selected)
            }
        }
    }
    var selectedButton: UIButton?
    var defaultButton: UIButton = UIButton() {
        didSet {
            buttonArrayUpdated(buttonSelected: self.defaultButton)
        }
    }
    
    func buttonArrayUpdated(buttonSelected: UIButton) {
        for b in buttonsArray {
            if b == buttonSelected {
                selectedButton = b
                b.isSelected = true
            } else {
                b.isSelected = false
            }
        }
    }
    
    func reset() {
        for b in buttonsArray {
            if b == selectedButton {
                b.isSelected = false
            }
        }
    }
}
