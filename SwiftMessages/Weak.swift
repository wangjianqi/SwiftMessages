//
//  Weak.swift
//  SwiftMessages
//
//  Created by Timothy Moose on 6/4/17.
//  Copyright © 2017 SwiftKick Mobile. All rights reserved.
//

import Foundation
//weak
public class Weak<T: AnyObject> {
    public weak var value : T?
    public init(value: T?) {
        self.value = value
    }
}
