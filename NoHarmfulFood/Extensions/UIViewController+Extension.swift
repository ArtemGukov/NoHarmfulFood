//
//  UIViewController+Extension.swift
//  NoHarmfulFood
//
//  Created by Артем on 22/04/2019.
//  Copyright © 2019 Gukov.space. All rights reserved.
//

import UIKit

extension UIViewController {
    func hideKeyboard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(AddViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
