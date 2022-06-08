//
//  DemosViewControllerConstraint.swift
//  InteractiveTextFieldDemo
//
//  Created by Sengthai Te on 5/6/22.
//

import UIKit
import InteractiveTextField

class DemosViewControllerConstraint: UIViewController {
    
    @IBOutlet weak var textField0: InteractiveTextFieldWithInline!
    @IBOutlet weak var textField1: InteractiveTextFieldWithInline!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Auto Layout Examples"
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapDismiss)))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(tapNextDemo))

        textField0.placeholder = "Input only english alphabets"
        textField0.validationMessage = "Only alphabet is accepted"
        textField0.validationRegex = [(message: "Only alphabet is accepted", regularExpression: "^[a-zA-Z]*$", isBlock: false)]
        
        textField1.inlineIconSize = CGSize(width: 20, height: 20)
        textField1.inlineLabelIcon = UIImage(systemName: "exclamationmark.triangle.fill")
        textField1.inlineMessage = "Inline message that will not hide when text change"
        
        let textField2 = InteractiveTextFieldWithInline()
        view.addSubview(textField2)
        textField2.placeholder = "Another placeholder"
        
        textField2.translatesAutoresizingMaskIntoConstraints = false
        textField2.topAnchor.constraint(equalTo: textField1.bottomAnchor, constant: 10).isActive = true
        textField2.leadingAnchor.constraint(equalTo: textField1.leadingAnchor).isActive = true
        textField2.trailingAnchor.constraint(equalTo: textField1.trailingAnchor).isActive = true
        textField2.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc private func tapNextDemo() {
        let viewController = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "DemosTextViewViewController")
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    @objc private func tapDismiss() {
        view.endEditing(true)
    }
    
}
