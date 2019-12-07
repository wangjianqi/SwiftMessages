//
//  NSLayoutConstraint+Utils.swift
//  SwiftMessages
//
//  Created by Timothy Moose on 5/18/19.
//  Copyright © 2019 SwiftKick Mobile. All rights reserved.
//

import UIKit

extension NSLayoutConstraint {
    //优先级
    func with(priority: UILayoutPriority) -> NSLayoutConstraint {
        self.priority = priority
        return self
    }
}
