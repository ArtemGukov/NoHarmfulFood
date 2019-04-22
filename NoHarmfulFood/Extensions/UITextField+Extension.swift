//
//  UITextField+Extension.swift
//  NoHarmfulFood
//
//  Created by Артем on 22/04/2019.
//  Copyright © 2019 Gukov.space. All rights reserved.
//

import UIKit

extension UITextField {
    var isEmpty: Bool {
        return text?.isEmpty ?? true
    }
}
