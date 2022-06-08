//
//  DemosTextViewViewController.swift
//  InteractiveTextFieldDemo
//
//  Created by Sengthai Te on 6/6/22.
//

import UIKit
import InteractiveTextField

class DemosTextViewViewController: UIViewController {
    
    @IBOutlet weak var textView: InteractiveTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.leadingIconView = UIImageView(image: UIImage(systemName: "exclamationmark.triangle.fill"))
    }
    
}
