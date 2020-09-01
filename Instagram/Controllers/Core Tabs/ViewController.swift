//
//  ViewController.swift
//  Instagram
//
//  Created by Scott on 8/31/20.
//  Copyright © 2020 Scott. All rights reserved.
//  HOME

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        handleNotAuthenticated()
    }
    
    private func handleNotAuthenticated() {
        // Check auth status
        if Auth.auth().currentUser == nil {
            // Show login
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen // prevents user from swiping login away
            present(loginVC, animated: false)
        }
    }

}

