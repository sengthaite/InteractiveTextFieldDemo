//
//  ViewController.swift
//  InteractiveTextFieldDemo
//
//  Created by Sengthai Te on 1/5/22.
//

import UIKit
import InteractiveTextField

class ViewController: UIViewController {

    @IBOutlet weak var firstName: InteractiveTextFieldWithInline!
    @IBOutlet weak var lastName: InteractiveTextFieldWithInline!
    var textField: InteractiveTextFieldWithInline!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        addGestures()
        addInlineText()
    }

    private func setupUI() {
        var config = InteractiveTextFieldConfig()
        config.textColor = .blue
        config.cornerRadius = 4
        config.activeBorderColor = .blue
        config.inlinedBorderColor = .red
        
        firstName.textFieldUIConfig = config
        lastName.textFieldUIConfig = config
        
        textField = InteractiveTextFieldWithInline(frame: CGRect(x: 8, y: 350, width: view.bounds.width - 16, height: 56), config: config)
        view.addSubview(textField)
        
        firstName.backgroundColor = .clear
        lastName.backgroundColor = .clear
    }
    
    private func addGestures() {
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(unfocus)))
    }
    
    @objc private func unfocus() {
        view.endEditing(true)
    }
    
    private func addInlineText() {
        firstName.inlineLabelIcon = UIImage(systemName: "xmark.octagon.fill")
        firstName.validationMessage = "First name is not correct"
        lastName.inlineLabelIcon = UIImage(systemName: "xmark.octagon.fill")
        lastName.validationMessage = "Last name is not correct."
        textField.inlineLabelIcon = UIImage(systemName: "xmark.octagon.fill")
        textField.validationMessage = "TextField text is not correct."
    }

}

