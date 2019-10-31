//
//  AuthViewController.swift
//  VKNews
//
//  Created by Dmitry Andreyanov on 10/28/19.
//  Copyright © 2019 Dmitrii Andreianov. All rights reserved.
//

import UIKit

class AuthViewController: UIViewController {

    private var authService: AuthService!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //authService = AuthService()
        authService = AppDelegate.shared().authService
    }
    @IBAction func signInTouch(_ sender: UIButton) {
        authService.wakeUpSession()
    }
    

}
