//
//  CustomButton.swift
//  ARDrawingApp
//
//  Created by Saransh Gupta on 07/15/19.
//  Copyright © 2019 Saransh Gupta. All rights reserved.
//

import UIKit

class CustomButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeButton()
    }

    func customizeButton(){
        backgroundColor = UIColor.lightGray
        layer.cornerRadius = 10.0
        
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }
}
