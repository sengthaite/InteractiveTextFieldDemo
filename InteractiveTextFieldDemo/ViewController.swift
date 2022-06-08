//
//  ViewController.swift
//  InteractiveTextFieldDemo
//
//  Created by Sengthai Te on 1/5/22.
//

import UIKit
import InteractiveTextField

class ViewController: UIViewController {
    
    @IBAction func showDemos(_ sender: Any) {
        let viewController = DemosViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.modalPresentationStyle = .overFullScreen
        present(navigationController, animated: true)
    }
    
}

