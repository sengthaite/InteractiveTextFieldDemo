//
//  TitleLabel.swift
//  InteractiveTextFieldDemo
//
//  Created by Sengthai Te on 4/6/22.
//

import UIKit

class TitleLabel: UILabel {
    
    init(frame: CGRect, title: String) {
        super.init(frame: frame)
        self.text = title
        self.numberOfLines = 0
        self.lineBreakMode = .byWordWrapping
        self.sizeToFit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
