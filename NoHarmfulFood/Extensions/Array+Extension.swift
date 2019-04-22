//
//  Array+Extension.swift
//  NoHarmfulFood
//
//  Created by Артем on 22/04/2019.
//  Copyright © 2019 Gukov.space. All rights reserved.
//

import Foundation

extension Array {
    func insertionIndexOf(elem: Element, isOrderedBefore: (Element, Element) -> Bool) -> Int {
        var lo = 0
        var hi = self.count - 1
        while lo <= hi {
            let mid = (lo + hi)/2
            if isOrderedBefore(self[mid], elem) {
                lo = mid + 1
            } else if isOrderedBefore(elem, self[mid]) {
                hi = mid - 1
            } else {
                return mid 
            }
        }
        return lo
    }
}
